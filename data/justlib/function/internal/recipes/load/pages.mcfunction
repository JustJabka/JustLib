# Get recipes amount
execute store result score #recipes main if data storage justlib:recipes recipes[]

# recipes / slots per page = pages
scoreboard players operation #pages main = #recipes main

scoreboard players operation #pages main *= #100 const
scoreboard players operation #pages main /= #page_slots main

# Generate Pages
data modify storage justlib:recipes pages set value []
scoreboard players set #page main 0

function justlib:internal/recipes/page/loop/create