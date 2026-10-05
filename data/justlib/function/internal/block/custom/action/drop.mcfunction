execute unless data entity @s data."justlib.block.loot_table" run return fail

data modify storage justlib:block _.loot_table set from entity @s data."justlib.block.loot_table"
function justlib:internal/block/custom/set/drop with storage justlib:block _