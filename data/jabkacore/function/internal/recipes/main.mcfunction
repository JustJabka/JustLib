# Destroy
execute unless block ~ ~ ~ minecraft:barrel run return run function jabkacore:internal/recipes/security/destroy

execute unless entity @s[tag=jabkacore.recipes.active] run return fail

# On close
execute if block ~ ~ ~ minecraft:barrel[open=false] run return run function jabkacore:internal/recipes/handler/close

# Main logic
scoreboard players operation #player id = @s id
execute as @a if score @s id = #player id run item modify entity @s player.cursor jabkacore:recipes/clear_bundle
scoreboard players set #clear main 1

## Get changes
execute store result score #changed main run data modify entity @s data.compare set from block ~ ~ ~ Items
execute unless score #changed main matches 1 run return fail
## Return items
execute in jabkacore:main positioned 0 0 0 run function jabkacore:internal/recipes/items/return

function jabkacore:internal/recipes/craft/extract
function jabkacore:internal/recipes/craft/get

## On craft
execute if data entity @s data{craft:true} \
    unless items block ~ ~ ~ container.16 *[minecraft:custom_data~{"jabkacore.recipes.result":true}] \
    if data storage jabkacore:recipes craft \
    as @a if score @s id = #player id \
run function jabkacore:internal/recipes/craft/start

## Updating crafting state
execute store result entity @s data.craft byte 1 if data storage jabkacore:recipes craft
execute if data storage jabkacore:recipes craft run function jabkacore:internal/recipes/state/ready

## Reset items
data modify block ~ ~ ~ Items set from storage jabkacore:recipes template
data modify block ~ ~ ~ Items append from storage jabkacore:recipes ingridients[]
data modify block ~ ~ ~ Items append from storage jabkacore:recipes craft

## Save changes
data modify entity @s data.compare set from block ~ ~ ~ Items