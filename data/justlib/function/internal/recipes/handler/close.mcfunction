stopsound @a[predicate=justlib:shared/id,limit=1] block minecraft:block.barrel.close

tag @s remove justlib.recipes.active
scoreboard players reset @s id
data remove block ~ ~ ~ lock
data modify storage justlib:main clear set value true