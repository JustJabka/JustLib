execute if entity @s[gamemode=spectator] run return fail

# Saving gamemode
function justlib:api/shared/gamemode/get
scoreboard players operation $in main = $out main

# Prepearing for applying motion
gamemode spectator

function justlib:internal/movement/motion/axis

# Applying motion
execute in justlib:main run item replace block 0 0 0 container.0 from entity @s saddle
loot replace entity @s saddle loot justlib:internal/movement/motion

# Reverting changes
function justlib:api/shared/gamemode/set

# Stopping motion
execute in justlib:main run item replace entity @s saddle from block 0 0 0 container.0