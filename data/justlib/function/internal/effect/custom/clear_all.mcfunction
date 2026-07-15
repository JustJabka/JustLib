data modify storage justlib:main effects.cleared set from storage justlib:main player_data.active_effects[-1]
function justlib:internal/effect/custom/on/clear

# Loop
data remove storage justlib:main player_data.active_effects[-1]
execute if data storage justlib:main player_data.active_effects[0] run function justlib:internal/effect/custom/clear_all