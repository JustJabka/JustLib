# Destroy all dummy items
scoreboard players set #clear main 1

# Replace loot table of block
function jabkacore:api/block/custom/get/loot_table
function jabkacore:api/block/custom/set/loot_table with storage jabkacore:main block

kill @s