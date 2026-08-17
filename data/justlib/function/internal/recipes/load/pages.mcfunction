# Get recipes amount
execute store result score #recipes main if data storage justlib:recipes recipes[]

# pages = (23 + recipes) / 24
scoreboard players operation #pages main = #page_slots main
scoreboard players remove #pages main 1
scoreboard players operation #pages main += #recipes main

scoreboard players operation #pages main /= #page_slots main

# Generate Pages
data modify storage justlib:recipes pages set value []
scoreboard players set #page main 0

function justlib:internal/recipes/page/loop/create

data modify storage justlib:recipes pages[][].components merge from storage justlib:recipes recipes_properties
data modify storage justlib:recipes pages[] append from storage justlib:recipes template[]