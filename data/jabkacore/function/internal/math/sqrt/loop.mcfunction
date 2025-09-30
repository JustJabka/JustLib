scoreboard players operation #x jabkacore.math += #y jabkacore.math
scoreboard players operation #x jabkacore.math /= #2 const

scoreboard players operation #y jabkacore.math = $in jabkacore.math
scoreboard players operation #y jabkacore.math /= #x jabkacore.math

execute if score #x jabkacore.math > #y jabkacore.math run return run function jabkacore:internal/math/sqrt/loop
return run scoreboard players operation $out jabkacore.math = #x jabkacore.math