data modify storage justlib:recipes result set from storage justlib:recipes clicked

# Remove gui data
data remove storage justlib:recipes result.components."minecraft:custom_data"."justlib.clear"
data remove storage justlib:recipes result.components."minecraft:custom_data".dynamic
data remove storage justlib:recipes result.components."minecraft:custom_data".prev

# Remove recipe data
data remove storage justlib:recipes result.components."minecraft:custom_data".ingredients
data remove storage justlib:recipes result.components."minecraft:lore"[{translate:"item.ingredients"}]
data remove storage justlib:recipes result.components."minecraft:lore"[{translate:"item.ingredient"}]

# Give item to the player
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Items append from storage justlib:recipes result

loot give @a[predicate=justlib:shared/id,limit=1] mine ~ ~ ~ minecraft:poisonous_potato[minecraft:custom_data={drop:true}]