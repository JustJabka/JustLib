data modify block ~ ~ ~ Items set from entity @s data.compare
function jabkacore:internal/recipes/craft/remove
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{"jabkacore.recipes.dummy":true,"jabkacore.clear":true}}}]
loot give @a[predicate=jabkacore:shared/id] mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]