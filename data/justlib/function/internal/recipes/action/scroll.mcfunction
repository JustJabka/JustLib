execute store result score #page main run data get entity @s data.page

# Get all pages
execute store result score #pages main if data storage justlib:recipes pages[]

# Get next page
scoreboard players operation #page main += #amount main

# -1 + 5 = 4
# 4 % 5 = 4

# 4 + 1 = 5
# 5 % 5 = 0
scoreboard players operation #page main += #pages main
scoreboard players operation #page main %= #pages main

execute store result entity @s data.page int 1 run scoreboard players get #page main