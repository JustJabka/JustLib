execute store success storage justlib:main success byte 1 run function justlib:internal/shared/get_default_component/store_item/block with storage justlib:main
execute if data storage justlib:main {success:false} run return run kill @s

function justlib:internal/shared/get_default_component/end