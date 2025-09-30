execute if score #dx jabkacore.movement matches 1 if score #dz jabkacore.movement matches 0 run return run scoreboard players set #angle jabkacore.movement 0
execute if score #dx jabkacore.movement matches 1 if score #dz jabkacore.movement matches 1 run return run scoreboard players set #angle jabkacore.movement 450
execute if score #dx jabkacore.movement matches 0 if score #dz jabkacore.movement matches 1 run return run scoreboard players set #angle jabkacore.movement 900
execute if score #dx jabkacore.movement matches -1 if score #dz jabkacore.movement matches 1 run return run scoreboard players set #angle jabkacore.movement 1350
execute if score #dx jabkacore.movement matches -1 if score #dz jabkacore.movement matches 0 run return run scoreboard players set #angle jabkacore.movement 1800
execute if score #dx jabkacore.movement matches -1 if score #dz jabkacore.movement matches -1 run return run scoreboard players set #angle jabkacore.movement -1350
execute if score #dx jabkacore.movement matches 0 if score #dz jabkacore.movement matches -1 run return run scoreboard players set #angle jabkacore.movement -900
execute if score #dx jabkacore.movement matches 1 if score #dz jabkacore.movement matches -1 run return run scoreboard players set #angle jabkacore.movement -450