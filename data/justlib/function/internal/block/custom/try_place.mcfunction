execute if entity @e[type=!minecraft:glow_item_frame,tag=!justlib.block,dx=0] run return run function justlib:api/block/custom/drop

# Placing block
data modify storage justlib:main block.place set from entity @s data."justlib.block.place"
function justlib:api/block/custom/place with storage justlib:main block

kill @s