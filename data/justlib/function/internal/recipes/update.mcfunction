## Reset items
function justlib:internal/recipes/page/draw with entity @s data

## Save changes
data modify entity @s data.compare set from block ~ ~ ~ Items
data modify entity @s data.prev set from block ~ ~ ~ Items