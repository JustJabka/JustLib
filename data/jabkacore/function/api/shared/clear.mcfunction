scoreboard players set #clear main 0

# Clearing player inventory and his bundles
clear @a *[minecraft:custom_data~{"jabkacore.clear":true}]
item modify entity @a player.cursor jabkacore:shared/clear/bundle

# Removing all items
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{"jabkacore.clear":true}] run kill @s