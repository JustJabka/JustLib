scoreboard objectives add main dummy
scoreboard objectives add const dummy

scoreboard objectives add air air
scoreboard objectives add armor armor
scoreboard objectives add food food
scoreboard objectives add health health

scoreboard objectives add deaths deathCount
scoreboard objectives add on_respawn custom:time_since_death
scoreboard objectives add id dummy

execute unless score #inited main matches 1 run function jabkacore:internal/shared/init