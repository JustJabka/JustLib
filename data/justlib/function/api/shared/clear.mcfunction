scoreboard players set #clear main 0

# Clearing player inventory and his bundles
execute as @a run function justlib:internal/shared/clear

# Removing all items
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{"justlib.clear":true}] run kill @s