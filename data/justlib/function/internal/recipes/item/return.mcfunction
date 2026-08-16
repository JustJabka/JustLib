data modify block ~ ~ ~ Items set from entity @s data.compare
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{"justlib.clear":true}}}]
loot give @a[predicate=justlib:shared/id,limit=1] mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]