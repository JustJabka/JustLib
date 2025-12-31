function justlib:api/health/get/current
function justlib:api/health/get/max
scoreboard players operation @s justlib.health.current *= #100 const

return run execute store result score @s justlib.health.percent run scoreboard players operation @s justlib.health.current /= @s justlib.health.max