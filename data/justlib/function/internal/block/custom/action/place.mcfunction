execute unless data entity @s data."justlib.block.place" run return fail

data modify storage justlib:main dynamic set from entity @s data."justlib.block.place"
function justlib:api/shared/dynamic with storage justlib:main