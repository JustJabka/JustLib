# effect.existing - alreay active effect on player
# effect.give - effect that is tried to apply via API

# Get amplifier
execute store result score #amplifier_old main run data get storage justlib:main effect.existing.amplifier
execute store result score #amplifier_new main run data get storage justlib:main effect.give.amplifier

# If new effect is stronger than old
execute if score #amplifier_new main > #amplifier_old main run return run function justlib:internal/effect/custom/priority/rule/amplifier

# Get duration
execute store result score #duration_old main run data get storage justlib:main effect.existing.expires_at
scoreboard players operation #duration_old main -= #gametime main
execute store result score #duration_new main run data get storage justlib:main effect.give.duration

# If new effect is longer than old
execute if score #duration_new main > #duration_old main run return run function justlib:internal/effect/custom/priority/rule/duration with storage justlib:main effect.existing

# Ignoring new effect if it's too weak