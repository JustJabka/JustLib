scoreboard players set #100 const 100

scoreboard players set #rows main 3
scoreboard players set #row_slots main 8
scoreboard players set #slot_offset main 1

# 3 * 8 = 24
scoreboard players operation #page_slots main = #rows main
scoreboard players operation #page_slots main *= #row_slots main

# TODO: Optimize ts
function justlib:internal/recipes/load/templates
function justlib:internal/recipes/load/recipes
function justlib:internal/recipes/load/pages