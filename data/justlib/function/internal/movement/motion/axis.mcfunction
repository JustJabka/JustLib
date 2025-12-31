data modify storage justlib:main movement.motion set value []

# X
scoreboard players operation $in justlib.movement = $x justlib.movement
function justlib:internal/movement/motion/append
execute if score $in justlib.movement matches 0.. run function justlib:internal/movement/calc/motion

function justlib:internal/movement/motion/append
function justlib:internal/movement/calc/motion

# Y
scoreboard players operation $in justlib.movement = $y justlib.movement
function justlib:internal/movement/motion/append
execute if score $in justlib.movement matches 0.. run function justlib:internal/movement/calc/motion

function justlib:internal/movement/motion/append
function justlib:internal/movement/calc/motion

# Z
scoreboard players operation $in justlib.movement = $z justlib.movement
function justlib:internal/movement/motion/append
execute if score $in justlib.movement matches 0.. run function justlib:internal/movement/calc/motion

function justlib:internal/movement/motion/append
function justlib:internal/movement/calc/motion