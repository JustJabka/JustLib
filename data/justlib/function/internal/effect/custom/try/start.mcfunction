# Get start event
data remove storage justlib:main shared.dynamic
data modify storage justlib:main shared.dynamic set from storage justlib:main player_data.active_effects[-1].events.start

execute unless data storage justlib:main shared.dynamic run return fail

# Save context for use API usage
data modify storage justlib:main effect.ctx set from storage justlib:main player_data.active_effects[-1]

# Run start event if it exists
function justlib:api/shared/dynamic with storage justlib:main shared