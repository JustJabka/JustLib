scoreboard players remove #z justlib.math 1

scoreboard players operation #x justlib.math *= #y justlib.math

execute if score #z justlib.math matches 2.. run return run function justlib:internal/math/power/loop
return run scoreboard players operation $out justlib.math = #x justlib.math