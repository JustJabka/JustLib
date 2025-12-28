execute if entity @e[type=!minecraft:glow_item_frame,tag=!jabkacore.block,dx=0] run return run function jabkacore:api/block/custom/drop

# Placing block
data modify storage jabkacore:main block.place set from entity @s data."jabkacore.block.place"
function jabkacore:api/block/custom/place with storage jabkacore:main block

kill @s