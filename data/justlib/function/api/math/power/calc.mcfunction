scoreboard players operation #x justlib.math = $in justlib.math
scoreboard players operation #y justlib.math = $in justlib.math
scoreboard players operation #z justlib.math = $n justlib.math

# x^0 = 1
execute if score $n justlib.math matches 0 store result score $out justlib.math run return 1

# x^n = { x * x * x ... x * x * x } - n times
execute store result score $out justlib.math \ 
    if score $in justlib.math matches 2.. \
    if score $n justlib.math matches 2.. \
run return run function justlib:internal/math/power/loop
return run scoreboard players operation $out justlib.math = $in justlib.math