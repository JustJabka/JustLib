data modify storage justlib:recipes predicates set from storage justlib:main temp[0].predicates
data modify storage justlib:recipes items set from storage justlib:recipes recipe

scoreboard players set #pass main 1
function justlib:internal/recipes/filters/validate
execute if score #pass main matches 1 run data modify storage justlib:recipes candidates append from storage justlib:main temp[0]

data remove storage justlib:main temp[0]

execute if data storage justlib:main temp[0] run function justlib:internal/recipes/filters/handle_craft