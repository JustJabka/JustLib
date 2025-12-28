# Destroy all dummy items
scoreboard players set #clear main 1

# Replace loot table of block
data modify storage jabkacore:main block.loot_table set from entity @s data."jabkacore.block.loot_table"
function jabkacore:api/block/custom/set/loot_table with storage jabkacore:main block

kill @s