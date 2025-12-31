scoreboard players operation #x justlib.math += #y justlib.math
scoreboard players operation #x justlib.math /= #2 const

scoreboard players operation #y justlib.math = $in justlib.math
scoreboard players operation #y justlib.math /= #x justlib.math

execute if score #x justlib.math > #y justlib.math run return run function justlib:internal/math/sqrt/loop
return run scoreboard players operation $out justlib.math = #x justlib.math