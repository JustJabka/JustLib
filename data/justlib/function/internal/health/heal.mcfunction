# Limit max health
function justlib:internal/health/heal/set with storage justlib:health _

# PREPARE THYSELF to subtick
effect give @s minecraft:instant_health 1 252 true
data modify storage justlib:health _.healed set value true
advancement revoke @s only justlib:health/heal