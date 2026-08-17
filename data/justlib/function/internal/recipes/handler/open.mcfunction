tag @s add justlib.recipes.active
scoreboard players operation @s id = #this id
data modify block ~ ~ ~ lock set value {predicates:{"minecraft:custom_data":{"justlib.debug":true}}}

data modify entity @s data.page set value 0

data modify block ~ ~ ~ Items set from storage justlib:recipes template
function justlib:internal/recipes/page/draw with entity @s data

data modify entity @s data.compare set from block ~ ~ ~ Items
data modify entity @s data.prev set from block ~ ~ ~ Items