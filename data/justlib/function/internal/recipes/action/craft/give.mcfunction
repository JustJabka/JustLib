# Give item to the player
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage justlib:recipes clicked.result

loot give @a[predicate=justlib:shared/id,limit=1] mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]