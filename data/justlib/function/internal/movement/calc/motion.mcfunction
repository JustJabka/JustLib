execute if score $in justlib.movement matches ..-1 run scoreboard players operation $in justlib.movement *= #-1 const

scoreboard players operation #temp main = $in justlib.movement
execute store result storage justlib:main movement.motion[-3] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in justlib.movement /= #100 const

scoreboard players operation #temp main = $in justlib.movement
execute store result storage justlib:main movement.motion[-2] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in justlib.movement /= #100 const

scoreboard players operation #temp main = $in justlib.movement
execute store result storage justlib:main movement.motion[-1] byte 1 run scoreboard players operation #temp main %= #100 const
scoreboard players operation $in justlib.movement /= #100 const