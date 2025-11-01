execute store result score #temp main run data get storage jabkacore:main temp[0].count
data modify storage jabkacore:main out append from storage jabkacore:main temp[0]
execute store result storage jabkacore:main out[-1].count byte 1 run scoreboard players operation #temp main -= #min main
execute if score #temp main matches ..0 run data remove storage jabkacore:main out[-1]

data remove storage jabkacore:main temp[0]
execute if data storage jabkacore:main temp[0] run function jabkacore:internal/recipes/craft/loop/remove