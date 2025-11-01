scoreboard players set #clear main 0
clear @a *[minecraft:custom_data~{"jabkacore.recipes.null":true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{"jabkacore.recipes.null":true}] run kill @s