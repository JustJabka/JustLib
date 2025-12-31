# No need to calc sqrt if $in it matches 0 or 1, just set it 
execute if score $in justlib.math matches 0..1 run return run scoreboard players operation $out justlib.math = $in justlib.math

# Cant calc sqrt of negative number
execute if score $in justlib.math matches ..-1 run return fail

# Prepare to loop
scoreboard players operation #x justlib.math = $in justlib.math
scoreboard players set #y justlib.math 1

# Loop
execute if score #x justlib.math > #y justlib.math run return run function justlib:internal/math/sqrt/loop