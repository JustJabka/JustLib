# Input: storage justlib:main effects.give
# Output: void

# Prevent effects without duration
execute store result score #duration main run data get storage justlib:main effects.give.duration
execute if score #duration main matches ..0 run return fail

function justlib:api/shared/ps/get

function justlib:internal/effect/custom/give

function justlib:api/shared/ps/save