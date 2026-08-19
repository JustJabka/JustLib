# Item Proccessing
data modify storage justlib:recipes current set from storage justlib:recipes temp[0].result
data modify storage justlib:recipes current.components."minecraft:custom_data".result set from storage justlib:recipes temp[0].result
data modify storage justlib:recipes current.components."minecraft:custom_data".ingredients set from storage justlib:recipes temp[0].ingredients

# Injecting Slot
data modify storage justlib:recipes current.Slot set from storage justlib:recipes slots[0]

# Saving Item
data modify storage justlib:recipes page append from storage justlib:recipes current

# Loop
data remove storage justlib:recipes slots[0]
data remove storage justlib:recipes temp[0]

execute unless data storage justlib:recipes temp[0] run return run function justlib:internal/recipes/page/compile/save
execute unless data storage justlib:recipes slots[0] run return run function justlib:internal/recipes/page/compile/overflow

function justlib:internal/recipes/page/compile/loop