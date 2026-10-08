ride @e[type=!minecraft:player,tag=this,distance=..0.1,limit=1] mount @s
data modify storage justlib:main out set from entity @s Passengers[0].id
kill @s