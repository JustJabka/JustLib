# Destroy all dummy items
data modify storage justlib:main clear set value true

# Replace loot table of block
data modify storage justlib:main block.loot_table set from entity @s data."justlib.block.loot_table"
function justlib:api/block/custom/set/loot_table with storage justlib:main block

# Custom Destroy Logic
function justlib:internal/block/custom/try/destroy

kill @s