execute store result score #temp main run data get storage justlib:main temp[0].z
execute if score #temp main >= #max main run data modify storage justlib:recipes craft set from storage justlib:main temp[0].result
data remove storage justlib:main temp[0]
scoreboard players operation #max main > #temp main

execute if data storage justlib:main temp[0] run function justlib:internal/recipes/filters/return