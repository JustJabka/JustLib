# On close
execute if block ~ ~ ~ minecraft:barrel[open=false] run return run function justlib:internal/recipes/handler/close

# Main logic
scoreboard players operation #this id = @s id

## Get changes
execute store result score #changed main run data modify entity @s data.compare set from block ~ ~ ~ Items
execute unless score #changed main matches 1 run return fail

scoreboard players set #clear main 1

## Return items
execute in justlib:main positioned 0 0 0 run function justlib:internal/recipes/item/return

# Actions
function justlib:internal/recipes/action/trigger

## Reset items
function justlib:internal/recipes/page/draw with entity @s data

## Save changes
data modify entity @s data.compare set from block ~ ~ ~ Items
data modify entity @s data.prev set from block ~ ~ ~ Items