# Add empty page
data modify storage justlib:recipes pages append value []

# Get start index
scoreboard players operation #start_index main = #page main
scoreboard players operation #start_index main *= #page_slots main

execute store result storage justlib:recipes index int 1 run scoreboard players set #index main 0
execute store result storage justlib:recipes recipe_index int 1 run scoreboard players operation #recipe_index main = #start_index main

function justlib:internal/recipes/page/loop/fill with storage justlib:recipes

# Step by one page
scoreboard players add #page main 1
execute if score #page main < #pages main run function justlib:internal/recipes/page/loop/create