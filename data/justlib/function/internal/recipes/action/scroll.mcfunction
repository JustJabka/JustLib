execute store result score #page main run data get entity @s data.page
execute store result score #amount main run data get storage justlib:recipes clicked.scroll_amount

# Get next page
scoreboard players operation #page main += #amount main
execute store result entity @s data.page int 1 run scoreboard players operation #page main %= #pages main