scoreboard objectives add main dummy
scoreboard objectives add const dummy

scoreboard objectives add air air
scoreboard objectives add armor armor
scoreboard objectives add food food
scoreboard objectives add health health

scoreboard objectives add deaths deathCount
scoreboard objectives add on_respawn custom:time_since_death
scoreboard objectives add id dummy

execute in jabkacore:main run forceload add 0 0
execute in jabkacore:main run setblock 0 0 0 minecraft:shulker_box
execute in jabkacore:main run summon minecraft:marker 0 0 0 {UUID:[I;-956788829,-1804974305,-1389814553,-460254431]}

execute unless score #inited main matches 1 run function jabkacore:internal/shared/init