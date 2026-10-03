# Input: storage justlib:effect give
# Output: void

# Prevent effects without duration
data modify storage justlib:math a set from storage justlib:effect give.duration
data modify storage justlib:math b set value 0
execute if predicate justlib:math/less_or_equal run return fail

# Prevent effects without correct amplifier
data modify storage justlib:math a set from storage justlib:effect give.amplifier
data modify storage justlib:math b set value -1
execute if predicate justlib:math/less_or_equal run return fail

function justlib:api/shared/ps/get

function justlib:internal/effect/custom/give

function justlib:api/shared/ps/save