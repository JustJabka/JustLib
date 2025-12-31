execute if score #dx justlib.movement matches 1 if score #dz justlib.movement matches 0 run return run scoreboard players set #angle justlib.movement 0
execute if score #dx justlib.movement matches 1 if score #dz justlib.movement matches 1 run return run scoreboard players set #angle justlib.movement 450
execute if score #dx justlib.movement matches 0 if score #dz justlib.movement matches 1 run return run scoreboard players set #angle justlib.movement 900
execute if score #dx justlib.movement matches -1 if score #dz justlib.movement matches 1 run return run scoreboard players set #angle justlib.movement 1350
execute if score #dx justlib.movement matches -1 if score #dz justlib.movement matches 0 run return run scoreboard players set #angle justlib.movement 1800
execute if score #dx justlib.movement matches -1 if score #dz justlib.movement matches -1 run return run scoreboard players set #angle justlib.movement -1350
execute if score #dx justlib.movement matches 0 if score #dz justlib.movement matches -1 run return run scoreboard players set #angle justlib.movement -900
execute if score #dx justlib.movement matches 1 if score #dz justlib.movement matches -1 run return run scoreboard players set #angle justlib.movement -450