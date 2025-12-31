# Destroy all dummy items
scoreboard players set #clear main 1

# Replace loot table of block
data modify storage justlib:main block.loot_table set from entity @s data."justlib.block.loot_table"
function justlib:api/block/custom/set/loot_table with storage justlib:main block

kill @s