advancement revoke @s only justlib:recipes/open
scoreboard players operation #this id = @s id
execute as @e[type=minecraft:item_display,tag=justlib.recipes,tag=!justlib.recipes.active] at @s if block ~ ~ ~ minecraft:barrel[open=true] run function justlib:internal/recipes/handler/open