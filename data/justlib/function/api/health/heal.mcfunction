function justlib:api/health/get/current
function justlib:api/health/get/max

# If no need to heal
execute if score @s justlib.health.current >= @s justlib.health.max run return fail

function justlib:internal/health/heal/calc

# If this heal will fully heal the player, just fully heal 
execute if score #need_to_heal justlib.health matches ..0 run return run effect give @s minecraft:instant_health 1 252 true

function justlib:internal/health/heal