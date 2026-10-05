# effect.give - effect that is trying to apply via API (new)
# effect.existing - already active effect on the player (old)

# Get amplifier
data modify storage justlib:math a set from storage justlib:effect give.amplifier
data modify storage justlib:math b set from storage justlib:effect existing.amplifier

# If new effect is stronger than old one
execute if predicate justlib:math/greater run return run function justlib:internal/effect/custom/priority/rule/amplifier

# Get duration
data modify storage justlib:math a set from storage justlib:effect give.duration
data modify storage justlib:math b set compute default integer {type:"minecraft:sub",left:{type:"minecraft:storage",storage:"justlib:effect",path:"existing.expires_at"},right:{type:"minecraft:storage",storage:"justlib:main",path:"gametime"}}

# If new effect is longer than old one
execute if predicate justlib:math/greater run return run function justlib:internal/effect/custom/priority/rule/duration with storage justlib:effect existing

# Ignoring new effect if it's too weak