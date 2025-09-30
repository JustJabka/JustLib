# Shared
scoreboard objectives add main dummy
scoreboard objectives add const dummy

scoreboard objectives add air air
scoreboard objectives add armor armor
scoreboard objectives add food food
scoreboard objectives add health health

scoreboard objectives add deaths deathCount
scoreboard objectives add on_respawn custom:time_since_death

execute unless score #inited main matches 1 run function jabkacore:internal/shared/init

# Health Module
scoreboard objectives add jabkacore.health dummy
scoreboard objectives add jabkacore.health.max dummy
scoreboard objectives add jabkacore.health.current dummy
scoreboard objectives add jabkacore.health.percent dummy

# Effects Module
scoreboard objectives add jabkacore.effect.freezing dummy
scoreboard objectives add jabkacore.effect.drowning dummy

# Math Module
scoreboard objectives add jabkacore.math dummy
execute unless score #inited jabkacore.math matches 1 run function jabkacore:internal/math/init

# Movement Module
scoreboard objectives add jabkacore.movement dummy