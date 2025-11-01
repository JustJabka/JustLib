import json
import requests
import os

game_version = input("Game Version: ")
url = f"https://raw.githubusercontent.com/misode/mcmeta/{game_version}-summary/item_components/data.min.json"

if game_version == "latest":
    url = "https://raw.githubusercontent.com/misode/mcmeta/summary/item_components/data.min.json"

if requests.get(url).status_code != requests.codes.ok:
    print(f"Status code: {requests.get(url).status_code}")
    exit()


fetched = list(requests.get(url).json().keys())
fetched = [f"minecraft:{item}" for item in fetched]

ignored_items = {
    "minecraft:air"
}

fetched = [item for item in fetched if item not in ignored_items]

index_file = "item_indexes.json"

if os.path.exists(index_file):
    with open(index_file, "r") as f:
        item_indexes = json.load(f)
else:
    item_indexes = {}

current_max = max(item_indexes.values(), default=0)

for item in fetched:
    if item not in item_indexes:
        current_max += 1
        item_indexes[item] = current_max

with open(index_file, "w") as f:
    json.dump(item_indexes, f, indent=2)

with open("ingredients.mcfunction", "w") as file:
    file.write(f"data modify storage jabkacore:recipes recipe.registered set value {json.dumps(item_indexes, separators=(',', ':'), indent=None)}")