execute if entity @e[type=!minecraft:glow_item_frame,tag=!justlib.block,dx=0] run return run function justlib:internal/block/custom/drop
execute unless block ~ ~ ~ #minecraft:replaceable run return run function justlib:internal/block/custom/drop

function justlib:internal/block/custom/action/place
kill @s