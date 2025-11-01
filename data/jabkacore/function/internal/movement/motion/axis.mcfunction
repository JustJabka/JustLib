data modify storage jabkacore:main movement.motion set value []

# X
scoreboard players operation $in jabkacore.movement = $x jabkacore.movement
function jabkacore:internal/movement/motion/append
execute if score $in jabkacore.movement matches 0.. run function jabkacore:internal/movement/calc/motion

function jabkacore:internal/movement/motion/append
function jabkacore:internal/movement/calc/motion

# Y
scoreboard players operation $in jabkacore.movement = $y jabkacore.movement
function jabkacore:internal/movement/motion/append
execute if score $in jabkacore.movement matches 0.. run function jabkacore:internal/movement/calc/motion

function jabkacore:internal/movement/motion/append
function jabkacore:internal/movement/calc/motion

# Z
scoreboard players operation $in jabkacore.movement = $z jabkacore.movement
function jabkacore:internal/movement/motion/append
execute if score $in jabkacore.movement matches 0.. run function jabkacore:internal/movement/calc/motion

function jabkacore:internal/movement/motion/append
function jabkacore:internal/movement/calc/motion