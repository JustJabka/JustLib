scoreboard players set #changed main 0

tellraw @a {storage:"justlib:recipes",nbt:"items[0].components"}
tellraw @a {storage:"justlib:recipes",nbt:"predicates[0]"}

execute store result score #changed main run data modify storage justlib:recipes items[0].components set from storage justlib:recipes predicates[0]
execute unless data storage justlib:recipes predicates[0].skip if score #changed main matches 1 run return run scoreboard players set #pass main 0

data remove storage justlib:recipes predicates[0]
data remove storage justlib:recipes items[0]

execute if data storage justlib:recipes items[0] if data storage justlib:recipes predicates[0] run function justlib:internal/recipes/filters/validate