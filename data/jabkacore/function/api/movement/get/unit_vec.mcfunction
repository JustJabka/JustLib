# Reset scores
scoreboard players set #dx jabkacore.movement 0
scoreboard players set #dz jabkacore.movement 0

function jabkacore:internal/movement/get/inputs

execute if score #dx jabkacore.movement matches 0 if score #dz jabkacore.movement matches 0 run return run data modify storage jabkacore:main movement.unit_vec set value [0f, 0f, 0f]
function jabkacore:internal/math/angle/directory

# Calculate
function jabkacore:internal/movement/calc/unit_vec