scoreboard players operation #x jabkacore.math = $in jabkacore.math
scoreboard players operation #y jabkacore.math = $in jabkacore.math
scoreboard players operation #z jabkacore.math = $n jabkacore.math

# x^0 = 1
execute if score $n jabkacore.math matches 0 store result score $out jabkacore.math run return 1

# x^n = { x * x * x ... x * x * x } - n times
execute store result score $out jabkacore.math \ 
    if score $in jabkacore.math matches 2.. \
    if score $n jabkacore.math matches 2.. \
run return run function jabkacore:internal/math/power/loop
return run scoreboard players operation $out jabkacore.math = $in jabkacore.math