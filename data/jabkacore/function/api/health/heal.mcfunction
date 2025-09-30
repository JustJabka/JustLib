function jabkacore:api/health/get/current
function jabkacore:api/health/get/max

# If no need to heal
execute if score @s jabkacore.health.current >= @s jabkacore.health.max run return fail

function jabkacore:internal/health/heal/calc

# If this heal will fully heal the player, just fully heal 
execute if score #need_to_heal jabkacore.health matches ..0 run return run effect give @s minecraft:instant_health 1 252 true

function jabkacore:internal/health/heal