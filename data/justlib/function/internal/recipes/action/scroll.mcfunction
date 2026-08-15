execute store result score #page main run data get entity @s data.page

# Get Next Page
execute store result storage justlib:recipes page int 1 run scoreboard players operation #page main += #amount main

# If next page is negative - cancel
execute if score #page main matches ..-1 run return fail

# If next page is empty - cancel
execute store result score #temp main run function justlib:internal/recipes/page/is_empty with storage justlib:recipes
execute unless score #temp main matches 1 run return fail

execute store result entity @s data.page int 1 run scoreboard players get #page main