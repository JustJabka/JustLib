# Found: array of recipes
# Craft: array of meta-data
data remove storage justlib:recipes candidates

data modify storage justlib:main temp set from storage justlib:recipes found
execute if data storage justlib:main temp[0] run function justlib:internal/recipes/filters/handle_craft

data modify storage justlib:main temp set from storage justlib:recipes candidates
execute store result score #max main run data get storage justlib:main temp[0].z
execute if data storage justlib:main temp[0] run function justlib:internal/recipes/filters/return