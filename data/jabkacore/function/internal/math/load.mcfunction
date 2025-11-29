scoreboard objectives add jabkacore.math dummy

# Consts
scoreboard players set #9000 const 9000
scoreboard players set #3600 const 3600
scoreboard players set #360 const 360
scoreboard players set #2 const 2

execute unless score #inited jabkacore.math matches 1 run function jabkacore:internal/math/init