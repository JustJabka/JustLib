execute if score #shift main matches 0 run return run scoreboard players set #min main 1

scoreboard players set #min main 99
data modify storage jabkacore:main temp set from storage jabkacore:recipes ingridients
function jabkacore:internal/recipes/craft/loop/calc

execute store result storage jabkacore:recipes craft.count int 1 run scoreboard players get #min main