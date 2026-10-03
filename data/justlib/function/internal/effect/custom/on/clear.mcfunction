# Get end event
data remove storage justlib:main shared.dynamic
data modify storage justlib:main shared.dynamic set from storage justlib:effect _.cleared.events.end

execute unless data storage justlib:main shared.dynamic run return fail

# Save context for use API usage
data modify storage justlib:effect ctx set from storage justlib:effect _.cleared

# Run end event if it exists
function justlib:api/shared/dynamic with storage justlib:main shared
