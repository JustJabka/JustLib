# Get end event
data remove storage justlib:main shared.dynamic
data modify storage justlib:main shared.dynamic set from storage justlib:main effects.cleared.events.end

execute unless data storage justlib:main shared.dynamic run return fail

# Save context for use API usage
data modify storage justlib:main effects.ctx set from storage justlib:main effects.cleared

# Run end event if it exists
function justlib:api/shared/dynamic with storage justlib:main shared
