# Shift detection
execute store result score #shift main if items entity @s container.* *[minecraft:custom_data~{"justlib.recipes.result":true}]

data remove storage justlib:main out

function justlib:internal/recipes/craft/shift

data modify storage justlib:main temp set from storage justlib:recipes ingridients
function justlib:internal/recipes/craft/loop/remove

data modify storage justlib:recipes ingridients set from storage justlib:main out

execute in justlib:main positioned 0 0 0 run function justlib:internal/recipes/craft/give

function justlib:internal/recipes/craft/get