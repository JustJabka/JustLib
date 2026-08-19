execute store result score #modes main if data storage justlib:recipes static[]
execute store result score #mode main run data get entity @s data.mode

scoreboard players add #mode main 1
execute store result entity @s data.mode int 1 run scoreboard players operation #mode main %= #modes main

function justlib:internal/recipes/action/change/page

# Change container background and close it
data modify block ~ ~ ~ CustomName.extra[0].extra[0] set string entity @s data.mode
execute as @a[predicate=justlib:shared/id,limit=1] at @s run function justlib:internal/recipes/force_close