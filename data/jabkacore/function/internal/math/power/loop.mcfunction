scoreboard players remove #z jabkacore.math 1

scoreboard players operation #x jabkacore.math *= #y jabkacore.math

execute if score #z jabkacore.math matches 2.. run return run function jabkacore:internal/math/power/loop
return run scoreboard players operation $out jabkacore.math = #x jabkacore.math