function justlib:api/shared/ps/get

data modify storage justlib:main effect.active_effects set from storage justlib:main player_data.active_effects
data modify storage justlib:main player_data.active_effects set value []
execute if data storage justlib:main effect.active_effects[0] run function justlib:internal/effect/custom/loop

function justlib:api/shared/ps/save