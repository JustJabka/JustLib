# Get values
data modify storage justlib:math a set from storage justlib:main gametime
data modify storage justlib:math b set from storage justlib:effect _.active_effects[-1].expires_at

# Run tick at all not expired effects
execute if predicate justlib:math/less run function justlib:internal/effect/custom/try/tick

# Run end at all expired effects
execute if predicate justlib:math/greater_or_equal run function justlib:internal/effect/custom/try/end

# Loop
data remove storage justlib:effect _.active_effects[-1]
execute if data storage justlib:effect _.active_effects[0] run function justlib:internal/effect/custom/loop