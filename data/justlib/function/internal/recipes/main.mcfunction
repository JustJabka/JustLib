# On close
execute if block ~ ~ ~ minecraft:barrel[open=false] run return run function justlib:internal/recipes/handler/close

# Main logic
scoreboard players operation #this id = @s id

## Get changes
execute store result score #changed main run data modify entity @s data.compare set from block ~ ~ ~ Items
execute unless score #changed main matches 1 run return fail

scoreboard players set #clear main 1

## Return items
execute in justlib:main positioned 0 0 0 run function justlib:internal/recipes/items/return

function justlib:internal/recipes/craft/extract
function justlib:internal/recipes/craft/get

## On craft
execute if data entity @s data{craft:true} \
    unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"justlib.recipes.result":true}] \
    if data storage justlib:recipes craft \
    as @a[predicate=justlib:shared/id] \
run function justlib:internal/recipes/craft/start

## Updating crafting state
execute store result entity @s data.craft byte 1 if data storage justlib:recipes craft
execute if data storage justlib:recipes craft run function justlib:internal/recipes/state/ready

## Reset items
data modify block ~ ~ ~ Items set from storage justlib:recipes template
data modify block ~ ~ ~ Items append from storage justlib:recipes ingridients[]
data modify block ~ ~ ~ Items append from storage justlib:recipes craft

## Save changes
data modify entity @s data.compare set from block ~ ~ ~ Items