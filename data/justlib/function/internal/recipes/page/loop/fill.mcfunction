# Get Recipe
data remove storage justlib:recipes recipe
$data modify storage justlib:recipes recipe set from storage justlib:recipes recipes[$(recipe_index)]

execute unless data storage justlib:recipes recipe run return fail

data remove storage justlib:recipes temp
data modify storage justlib:recipes temp set from storage justlib:recipes recipe.result
data modify storage justlib:recipes temp.components."minecraft:custom_data".result set from storage justlib:recipes recipe.result
data modify storage justlib:recipes temp.components."minecraft:custom_data".ingredients set from storage justlib:recipes recipe.ingredients

# Put recipe in to the page
$data modify storage justlib:recipes pages[-1][$(index)] merge from storage justlib:recipes temp

# Loop
execute store result storage justlib:recipes index int 1 run scoreboard players add #index main 1
execute store result storage justlib:recipes recipe_index int 1 run scoreboard players add #recipe_index main 1

execute if score #index main < #page_slots main run function justlib:internal/recipes/page/loop/fill with storage justlib:recipes