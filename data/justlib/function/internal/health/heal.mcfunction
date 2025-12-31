# Limit max health
function justlib:internal/health/heal/set with storage justlib:main macros.health

# PREPARE THYSELF to subtick
effect give @s minecraft:instant_health 1 252 true
scoreboard players set #healed justlib.health 1
advancement revoke @s only justlib:health/heal