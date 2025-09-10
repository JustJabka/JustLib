execute store result score $in jabkacore.math run data get entity @s Rotation[0] 10
scoreboard players operation $in jabkacore.math += #angle jabkacore.movement
execute store result storage jabkacore:main movement.unit_vec[0] float 0.001 run function jabkacore:api/math/cos/calc
execute store result storage jabkacore:main movement.unit_vec[2] float 0.001 run function jabkacore:api/math/sin/calc