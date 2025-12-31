data modify block ~ ~ ~ Items set from entity @s data.compare
function justlib:internal/recipes/craft/remove
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{"justlib.recipes.dummy":true,"justlib.clear":true}}}]
loot give @a[predicate=justlib:shared/id] mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]