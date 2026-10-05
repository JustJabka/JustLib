execute unless data entity @s data."justlib.block.destroy" run return fail

data modify storage justlib:main dynamic set from entity @s data."justlib.block.destroy"
function justlib:api/shared/dynamic with storage justlib:main