# Save not expired effect to player data
data modify storage justlib:main player_data.active_effects append from storage justlib:main effect.active_effects[-1]

# Get tick event
data remove storage justlib:main shared.dynamic
data modify storage justlib:main shared.dynamic set from storage justlib:main effect.active_effects[-1].events.tick

execute unless data storage justlib:main shared.dynamic run return fail

# Save context for use API usage
data modify storage justlib:main effect.ctx set from storage justlib:main effect.active_effects[-1]

# Run tick event if it exists
function justlib:api/shared/dynamic with storage justlib:main shared