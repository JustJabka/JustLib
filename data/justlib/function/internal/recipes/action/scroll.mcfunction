execute store result score #page main run data get entity @s data.page

scoreboard players operation #page main += #amount main
execute if score #page main matches ..-1 run scoreboard players set #page main 0

execute store result entity @s data.page int 1 run scoreboard players get #page main

tellraw @a[predicate=justlib:shared/id,limit=1] {entity:"@s",nbt:"data.page"}