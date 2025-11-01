# Shift detection
execute store result score #shift main if items entity @s container.* *[minecraft:custom_data~{"jabkacore.recipes.result":true}]

data remove storage jabkacore:main out

function jabkacore:internal/recipes/craft/shift

data modify storage jabkacore:main temp set from storage jabkacore:recipes ingridients
function jabkacore:internal/recipes/craft/loop/remove

data modify storage jabkacore:recipes ingridients set from storage jabkacore:main out

execute in jabkacore:main positioned 0 0 0 run function jabkacore:internal/recipes/craft/give

function jabkacore:internal/recipes/craft/get