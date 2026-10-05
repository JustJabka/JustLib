# Destroy all dummy items
data modify storage justlib:main clear set value true

# Replace loot table of block
data modify storage justlib:block _.loot_table set from entity @s data."justlib.block.loot_table"
function justlib:internal/block/custom/set/loot_table with storage justlib:block _

# Custom Destroy Logic
function justlib:internal/block/custom/action/destroy

kill @s