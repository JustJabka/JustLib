# On close
execute if block ~ ~ ~ minecraft:barrel[open=false] run return run function justlib:internal/recipes/handler/close

# Main logic
scoreboard players operation #this id = @s id

## Get changes
execute store result storage justlib:recipes _.changed byte 1 run data modify entity @s data.compare set from block ~ ~ ~ Items
execute unless data storage justlib:recipes {_:{changed:true}} run return fail

data modify storage justlib:main clear set value true

## Return items
execute in justlib:main positioned 0 0 0 run function justlib:internal/recipes/item/return

# Actions
function justlib:internal/recipes/action/trigger

function justlib:internal/recipes/update