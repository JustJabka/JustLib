# TODO: add support for default item names
data modify storage justlib:recipes recipe.components."minecraft:lore" append value {translate:"item.ingredient",fallback:"%s x%s",with:["",""],color:"gray",italic:false}

# Get item name (id as fallback)
data modify storage justlib:recipes recipe.components."minecraft:lore"[-1].with[0] set from storage justlib:recipes temp[-1].id
execute if data storage justlib:recipes temp[-1].components."minecraft:item_name" run data modify storage justlib:recipes recipe.components."minecraft:lore"[-1].with[0] set from storage justlib:recipes temp[-1].components."minecraft:item_name"

# Get item count
data modify storage justlib:recipes recipe.components."minecraft:lore"[-1].with[1] set from storage justlib:recipes temp[-1].count

# Loop
data remove storage justlib:recipes temp[-1]
execute if data storage justlib:recipes temp[0] run function justlib:internal/recipes/page/loop/modify