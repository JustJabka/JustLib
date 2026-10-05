execute if entity @e[type=!minecraft:glow_item_frame,tag=!justlib.block,dx=0] run return run function justlib:api/block/custom/drop
execute unless block ~ ~ ~ #minecraft:replaceable run return run function justlib:api/block/custom/drop

# Placing block
data modify storage justlib:block _.place set from entity @s data."justlib.block.place"
function justlib:api/block/custom/place with storage justlib:block _

kill @s