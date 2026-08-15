# Get previous render
data modify storage justlib:recipes temp set from entity @s data.prev
data modify storage justlib:recipes temp[].components."minecraft:custom_data".prev set value true

data modify block ~ ~ ~ Items prepend from storage justlib:recipes temp[]
data remove storage justlib:recipes temp
data modify storage justlib:recipes temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{prev:true}}}]

data remove storage justlib:recipes in
data modify storage justlib:recipes in append from storage justlib:recipes temp[{components:{"minecraft:custom_data":{"justlib.clear":true}}}]

# Get click context
execute unless data storage justlib:recipes in[0] run return fail
data modify storage justlib:recipes clicked set from storage justlib:recipes in[0]
execute unless data storage justlib:recipes clicked.components."minecraft:custom_data".dynamic run return fail

function justlib:internal/recipes/action/click