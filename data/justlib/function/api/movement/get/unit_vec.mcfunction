# Reset scores
scoreboard players set #dx justlib.movement 0
scoreboard players set #dz justlib.movement 0

function justlib:internal/movement/get/inputs

execute if score #dx justlib.movement matches 0 if score #dz justlib.movement matches 0 run return run data modify storage justlib:main movement.unit_vec set value [0f, 0f, 0f]
function justlib:internal/math/angle/directory

# Calculate
function justlib:internal/movement/calc/unit_vec