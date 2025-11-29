tag @s add jabkacore.recipes.active
scoreboard players operation @s id = #this id
data modify block ~ ~ ~ lock set value {predicates:{"minecraft:custom_data":{"jabkacore.debug":true}}}

data remove entity @s data.compare