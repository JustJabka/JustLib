execute if entity @e[type=!minecraft:glow_item_frame,tag=!jabkacore.block,dx=0] run return run function jabkacore:api/block/custom/drop

# Placing block
function jabkacore:api/block/custom/get/place
function jabkacore:api/block/custom/place with storage jabkacore:main block

kill @s