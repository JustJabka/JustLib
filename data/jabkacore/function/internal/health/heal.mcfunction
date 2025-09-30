# Limit max health
function jabkacore:internal/health/heal/set with storage jabkacore:main macros.health

# PREPARE THYSELF to subtick
effect give @s minecraft:instant_health 1 252 true
scoreboard players set #healed jabkacore.health 1
advancement revoke @s only jabkacore:health/heal