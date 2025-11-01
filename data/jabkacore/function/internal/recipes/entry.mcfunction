advancement revoke @s only jabkacore:recipes/open
scoreboard players operation #player id = @s id
execute as @e[type=minecraft:item_display,tag=jabkacore.recipes,tag=!jabkacore.recipes.active] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function jabkacore:internal/recipes/handler/open