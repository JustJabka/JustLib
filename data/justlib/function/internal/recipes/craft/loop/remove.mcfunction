execute store result score #temp main run data get storage justlib:main temp[0].count
data modify storage justlib:main out append from storage justlib:main temp[0]
execute store result storage justlib:main out[-1].count byte 1 run scoreboard players operation #temp main -= #min main
execute if score #temp main matches ..0 run data remove storage justlib:main out[-1]

data remove storage justlib:main temp[0]
execute if data storage justlib:main temp[0] run function justlib:internal/recipes/craft/loop/remove