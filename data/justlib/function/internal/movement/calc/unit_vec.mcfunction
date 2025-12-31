execute store result score $in justlib.math run data get entity @s Rotation[0] 10
scoreboard players operation $in justlib.math += #angle justlib.movement
execute store result storage justlib:main movement.unit_vec[0] float 0.001 run function justlib:api/math/cos/calc
execute store result storage justlib:main movement.unit_vec[2] float 0.001 run function justlib:api/math/sin/calc