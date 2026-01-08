import argparse
import json
import logging
import shutil
import tempfile
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable
from collections import defaultdict
from git import Repo

GIT_URL = "https://github.com/JustJabka/JustLib.git"
DEFAULT_OUT = Path("generated/data")



logging.basicConfig(
    level=logging.INFO,
    format="%(levelname)s: %(message)s",
)
log = logging.getLogger("justlib")



@dataclass(frozen=True)
class Module:
    depends: list[str]
    paths: list[str]
    entrypoints: dict[str, list[str]] | None = None



# Load and Validation
def load_modules(path: Path) -> dict[str, Module]:
    raw = json.loads(path.read_text(encoding="utf-8"))
    modules: dict[str, Module] = {}

    for name, data in raw.items():
        try:
            modules[name] = Module(
                depends=data.get("depends", []),
                paths=data.get("paths", []),
                entrypoints=data.get("entrypoints"),
            )
        except Exception as e:
            raise ValueError(f"Invalid module definition: {name}") from e

    validate_modules(modules)
    return modules


def validate_modules(modules: dict[str, Module]) -> None:
    for name, module in modules.items():
        for dep in module.depends:
            if dep not in modules:
                raise ValueError(f"Module '{name}' depends on unknown module '{dep}'")



# Dependency Resolution
def collect_paths(
    modules: dict[str, Module],
    entry_modules: Iterable[str],
) -> set[str]:
    collected: set[str] = set()
    visited: set[str] = set()
    stack: set[str] = set()

    def dfs(name: str) -> None:
        if name in stack:
            raise ValueError(f"Circular dependency detected at '{name}'")
        if name in visited:
            return

        if name not in modules:
            raise ValueError(f"Unknown module '{name}'")

        stack.add(name)
        module = modules[name]

        for dep in module.depends:
            dfs(dep)

        collected.update(module.paths)
        visited.add(name)
        stack.remove(name)

    for name in entry_modules:
        dfs(name)

    return collected


def collect_entrypoints(
    modules: dict[str, Module],
    selected: Iterable[str],
) -> dict[str, list[str]]:
    """
    Returns:
        {
            "load": ["justlib/function/internal/shared/load.mcfunction", ...],
            "tick": [...],
            ...
        }
    """
    result: dict[str, list[str]] = defaultdict(list)
    visited: set[str] = set()

    def dfs(name: str):
        if name in visited:
            return
        visited.add(name)

        module = modules[name]

        for dep in module.depends:
            dfs(dep)

        if module.entrypoints:
            for key, values in module.entrypoints.items():
                result[key].extend(values)

    for name in selected:
        dfs(name)

    return result


def convert_function_path(path: str) -> str:
    """
    justlib/function/internal/shared/load.mcfunction
    -> justlib:internal/shared/load
    """
    p = Path(path)

    if p.suffix != ".mcfunction":
        raise ValueError(f"Not a function: {path}")

    parts = p.parts
    namespace = parts[0]
    if parts[1] != "function":
        raise ValueError(f"Invalid function path: {path}")

    return f"{namespace}:{'/'.join(parts[2:])[:-11]}"



# File Operations
def clone_repo(dst: Path) -> None:
    log.info("Cloning JustLib repository…")
    Repo.clone_from(GIT_URL, dst)


def copy_module_paths(
    repo_root: Path,
    rel_paths: Iterable[str],
    dst_root: Path,
    *,
    dry_run: bool = False,
) -> None:
    data_root = repo_root / "data"

    for rel in rel_paths:
        src = data_root / rel
        dst = dst_root / rel

        if not src.exists():
            raise FileNotFoundError(src)

        log.info("%s %s → %s", "[DRY]" if dry_run else "COPY", src, dst)

        if dry_run:
            continue

        dst.parent.mkdir(parents=True, exist_ok=True)

        if src.is_dir():
            if dst.exists():
                shutil.rmtree(dst)
            shutil.copytree(src, dst)
        else:
            shutil.copy2(src, dst)


def write_entrypoints(
    entrypoints: dict[str, list[str]],
    dst_data: Path,
    *,
    dry_run: bool = False,
) -> None:
    tag_root = dst_data / "justlib/tags/function"

    for tag, functions in entrypoints.items():
        values = sorted(
            convert_function_path(p)
            for p in functions
        )

        tag_file = tag_root / f"{tag}.json"
        payload = {
            "values": values,
        }

        log.info("%s TAG %s (%d entries)",
                 "[DRY]" if dry_run else "WRITE",
                 tag,
                 len(values))

        if dry_run:
            continue

        tag_file.parent.mkdir(parents=True, exist_ok=True)
        tag_file.write_text(
            json.dumps(payload, indent=4),
            encoding="utf-8",
        )



# CLI
def build_command(args: argparse.Namespace) -> None:
    modules = load_modules(Path(args.modules_file))
    selected = args.modules

    log.info("Selected modules: %s", ", ".join(selected))

    paths = collect_paths(modules, selected)
    entrypoints = collect_entrypoints(modules, selected)
    log.info("Collected %d paths", len(paths))

    with tempfile.TemporaryDirectory() as tmp:
        tmp_path = Path(tmp)

        clone_repo(tmp_path)

        copy_module_paths(
            repo_root=tmp_path,
            rel_paths=paths,
            dst_root=args.output,
            dry_run=args.dry_run,
        )

        write_entrypoints(
            entrypoints,
            dst_data=args.output,
            dry_run=args.dry_run,
        )

    log.info("Done.")


def main() -> None:
    parser = argparse.ArgumentParser("justlib-builder")

    parser.add_argument(
        "-m", "--modules",
        nargs="+",
        required=True,
        help="Modules to include",
    )

    parser.add_argument(
        "--modules-file",
        default="modules.json",
        help="Path to modules.json",
    )

    parser.add_argument(
        "--out",
        dest="output",
        type=Path,
        default=DEFAULT_OUT,
        help="Output data directory",
    )

    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print what would be copied without writing files",
    )

    args = parser.parse_args()
    build_command(args)


if __name__ == "__main__":
    main()