# No need to calc sqrt if $in it matches 0 or 1, just set it 
execute if score $in jabkacore.math matches 0..1 run return run scoreboard players operation $out jabkacore.math = $in jabkacore.math

# Cant calc sqrt of negative number
execute if score $in jabkacore.math matches ..-1 run return fail

# Prepare to loop
scoreboard players operation #x jabkacore.math = $in jabkacore.math
scoreboard players set #y jabkacore.math 1

# Loop
execute if score #x jabkacore.math > #y jabkacore.math run return run function jabkacore:internal/math/sqrt/loop