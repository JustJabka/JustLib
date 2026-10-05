# Get end event
data remove storage justlib:main dynamic
data modify storage justlib:main dynamic set from storage justlib:effect _.active_effects[-1].events.end

execute unless data storage justlib:main dynamic run return fail

# Save context for use API usage
data modify storage justlib:effect ctx set from storage justlib:effect _.active_effects[-1]

# Run end event if it exists
function justlib:api/shared/dynamic with storage justlib:main