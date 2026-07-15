# Store all data
data modify storage justlib:main player_data.active_effects append from storage justlib:main effects.give

# Calc expire stamp
execute store result score #expires_at main run data get storage justlib:main effects.give.duration
execute store result storage justlib:main player_data.active_effects[-1].expires_at int 1 run scoreboard players operation #expires_at main += #gametime main

function justlib:internal/effect/custom/try/start