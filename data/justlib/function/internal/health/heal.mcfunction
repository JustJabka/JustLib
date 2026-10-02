# Limit max health
function justlib:internal/health/heal/set with storage justlib:health

# PREPARE THYSELF to subtick
effect give @s minecraft:instant_health 1 252 true
data modify storage justlib:health _healed set value true
advancement revoke @s only justlib:health/heal