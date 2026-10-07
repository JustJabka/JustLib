# Player is not stored as passenger
execute if entity @s[type=minecraft:player] run return run data modify storage justlib:main out set value "minecraft:player"

tag @s add this
execute positioned as @s run function justlib:internal/shared/get_entity_type/start
tag @s remove this