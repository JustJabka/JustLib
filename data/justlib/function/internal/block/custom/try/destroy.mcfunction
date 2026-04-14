execute unless data entity @s data."justlib.block.destroy" run return fail

data modify storage justlib:main block.destroy set from entity @s data."justlib.block.destroy"
function justlib:api/block/custom/destroy with storage justlib:main block