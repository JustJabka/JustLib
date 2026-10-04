# Get previous render
data modify storage justlib:recipes _.temp set from entity @s data.prev
data modify storage justlib:recipes _.temp[].components."minecraft:custom_data".prev set value true

data modify block ~ ~ ~ Items prepend from storage justlib:recipes _.temp[]
data remove storage justlib:recipes _.temp
data modify storage justlib:recipes _.temp append from block ~ ~ ~ Items[{components:{"minecraft:custom_data":{prev:true}}}]

data remove storage justlib:recipes _.in
data modify storage justlib:recipes _.in append from storage justlib:recipes _.temp[{components:{"minecraft:custom_data":{"justlib.clear":true}}}]

# Get click context
execute unless data storage justlib:recipes _.in[0] run return fail
data modify storage justlib:recipes clicked set from storage justlib:recipes _.in[0].components."minecraft:custom_data"
execute unless data storage justlib:recipes clicked.dynamic run return fail

function justlib:internal/recipes/action/click