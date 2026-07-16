# Input: storage justlib:main effect.give
# Output: void

# Prevent effects without duration
execute store result score #duration main run data get storage justlib:main effect.give.duration
execute if score #duration main matches ..0 run return fail

# Prevent effects without correct amplifier
execute store result score #amplifier main run data get storage justlib:main effect.give.amplifier
execute if score #amplifier main matches ..-1 run return fail

function justlib:api/shared/ps/get

function justlib:internal/effect/custom/give

function justlib:api/shared/ps/save