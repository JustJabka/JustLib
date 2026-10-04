# Input: justlib:health heal

# Get values
function justlib:api/health/get/current
function justlib:api/health/get/max

data modify storage justlib:math a set from storage justlib:health current
data modify storage justlib:math b set from storage justlib:health max

# If no need to heal
execute if predicate justlib:math/greater_or_equal run return fail

# Heal Result = Current Health + Heal
# Need To Heal = (Max Health - Heal Result) * -1
data modify storage justlib:health _.heal set compute default float {type:"minecraft:mul",inputs:[{type:"minecraft:sub",left:{type:"minecraft:storage",storage:"justlib:health",path:"max"},right:{type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"justlib:health",path:"current"},{type:"minecraft:storage",storage:"justlib:health",path:"heal"}]}},-1]}

# If this heal will fully heal the player, just fully heal
data modify storage justlib:math a set compute default float {type:"minecraft:abs",input:{type:"minecraft:storage",storage:"justlib:health",path:"_.heal"}}
data modify storage justlib:math b set value 0
execute if predicate justlib:math/less_or_equal run return run effect give @s minecraft:instant_health 1 252 true

function justlib:internal/health/heal