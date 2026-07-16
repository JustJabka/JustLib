# Get expire stamp
execute store result score #expires_at main run data get storage justlib:main effect.active_effects[-1].expires_at

# Run tick at all not expired effects
execute if score #gametime main < #expires_at main run function justlib:internal/effect/custom/try/tick

# Run end at all expired effects
execute if score #gametime main >= #expires_at main run function justlib:internal/effect/custom/try/end

# Loop
data remove storage justlib:main effect.active_effects[-1]
execute if data storage justlib:main effect.active_effects[0] run function justlib:internal/effect/custom/loop