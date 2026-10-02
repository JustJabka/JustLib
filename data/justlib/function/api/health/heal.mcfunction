# Input: justlib:health heal

function justlib:api/health/get/current
function justlib:api/health/get/max

# # If no need to heal
data modify storage justlib:math a set from storage justlib:health current_health
data modify storage justlib:math b set from storage justlib:health max_health
execute if predicate justlib:math/greater_or_equal_to run return fail

# Heal Result = Current Health + Heal
# Need To Heal = (Max Health - Heal Result) * -1
data modify storage justlib:health _heal set compute default float {type:"minecraft:mul",inputs:[{type:"minecraft:sub",left:{type:"minecraft:storage",storage:"justlib:math",path:"b"},right:{type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"justlib:math",path:"a"},{type:"minecraft:storage",storage:"justlib:health",path:"heal"}]}},{type:"minecraft:constant",value:-1}]}

# If this heal will fully heal the player, just fully heal
data modify storage justlib:math a set from storage justlib:math _heal
data modify storage justlib:math b set value 0
execute if predicate justlib:math/less_or_equal_to run return run effect give @s minecraft:instant_health 1 252 true

function justlib:internal/health/heal