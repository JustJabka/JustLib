# Input: void
# Output: void

function justlib:api/shared/ps/get

execute if data storage justlib:main player_data.active_effects[0] run function justlib:internal/effect/custom/clear_all

function justlib:api/shared/ps/save