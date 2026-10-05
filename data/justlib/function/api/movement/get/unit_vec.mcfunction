# Reset unit vec
data modify storage justlib:movement unit_vec set value [0f, 0f, 0f]

function justlib:internal/movement/get/inputs

execute if predicate {type:"minecraft:float_value_check",value:{type:"minecraft:storage",storage:"justlib:movement",path:"unit_vec[0]"},test:0} \
        if predicate {type:"minecraft:float_value_check",value:{type:"minecraft:storage",storage:"justlib:movement",path:"unit_vec[2]"},test:0} \
run return fail

function justlib:internal/movement/get/directory

# Calculate
function justlib:internal/movement/calc/unit_vec