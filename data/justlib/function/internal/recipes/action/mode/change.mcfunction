execute store result storage justlib:recipes _.modes int 1 if data storage justlib:recipes static[]
data modify storage justlib:recipes _.mode set from entity @s data.mode

data modify entity @s data.mode set compute default integer {type:"minecraft:floor_mod",left:{type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"justlib:recipes",path:"_.mode"},1]},right:{type:"minecraft:storage",storage:"justlib:recipes",path:"_.modes"}}

function justlib:internal/recipes/action/page/change

# Change container background and close it
data modify block ~ ~ ~ CustomName.extra[0].extra[0] set string entity @s data.mode
execute as @a[predicate=justlib:shared/id,limit=1] at @s run function justlib:internal/recipes/handler/force_close