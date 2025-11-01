data modify block ~ ~ ~ Items set from entity @s data.compare
function jabkacore:internal/recipes/craft/remove
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{"jabkacore.recipes.null":true}}}]
execute as @a if score @s id = #player id run loot give @s mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]