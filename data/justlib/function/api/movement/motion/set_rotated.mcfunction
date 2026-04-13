# Do not give motion if it matches zero
execute if score $x justlib.movement matches 0 \
        if score $y justlib.movement matches 0 \
        if score $z justlib.movement matches 0 \
run return fail

scoreboard players set #rotated justlib.movement 1
execute at @s run function justlib:api/movement/motion/reset
execute at @s run function justlib:internal/movement/motion/apply