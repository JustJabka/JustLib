execute store result score #page main run data get entity @s data.page
execute store result score #offset main run data get storage justlib:recipes clicked.offset
scoreboard players operation #page main += #offset main

function justlib:internal/recipes/action/page/change