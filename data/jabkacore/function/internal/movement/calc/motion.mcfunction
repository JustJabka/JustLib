execute if score $in jabkacore.movement matches ..-1 run scoreboard players operation $in jabkacore.movement *= #-1 const

scoreboard players operation #temp main = $in jabkacore.movement
execute store result storage jabkacore:main movement.motion[-3] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in jabkacore.movement /= #100 const

scoreboard players operation #temp main = $in jabkacore.movement
execute store result storage jabkacore:main movement.motion[-2] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in jabkacore.movement /= #100 const

scoreboard players operation #temp main = $in jabkacore.movement
execute store result storage jabkacore:main movement.motion[-1] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in jabkacore.movement /= #100 const