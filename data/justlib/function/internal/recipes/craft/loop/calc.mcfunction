execute store result score #temp main run data get storage justlib:main temp[-1].count
scoreboard players operation #min main < #temp main

data remove storage justlib:main temp[-1]
execute if data storage justlib:main temp[-1] run function justlib:internal/recipes/craft/loop/calc