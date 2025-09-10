scoreboard players set #reset_items jabkacore.gui 1

# Id system
scoreboard players operation #id jabkacore.id = @s jabkacore.id
tag @a[predicate=jabkacore:id,limit=1] add jabkacore.gui.this

# Quick Craft
# execute store success score #quick_craft jabkacore.gui if items entity @a[tag=jabkacore.gui.this,limit=1] container.* *[minecraft:custom_data~{jabkacore.gui.item:true}]
# execute if score #quick_craft jabkacore.gui matches 1.. run say 1

# Craft
execute if score @s jabkacore.gui.active_recipe matches 1 unless items block ~ ~ ~ container.16 * run function jabkacore:internal/crafting_table/crafts/craft

item replace block ~ ~ ~ container.16 with minecraft:air
scoreboard players set @s jabkacore.gui.active_recipe 0
data modify storage jabkacore:gui crafting_table.recipe set value []
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:3b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:4b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:12b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:13b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:20b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:21b}]
data modify storage jabkacore:gui crafting_table.recipe append from block ~ ~ ~ Items[{Slot:22b}]
data remove storage jabkacore:gui crafting_table.recipe[{components:{"minecraft:custom_data":{jabkacore.gui.item:true}}}]

data remove storage jabkacore:gui crafting_table.craft_result
function #jabkacore:recipes
execute if data storage jabkacore:gui crafting_table.craft_result run function jabkacore:internal/crafting_table/crafts/handle

# Return Items
execute in jabkacore:main positioned 0 0 0 run function jabkacore:internal/crafting_table/gui/items/return
execute as @e[type=minecraft:item,predicate=jabkacore:crafting_table/dimension] run function jabkacore:internal/crafting_table/crafts/result/teleport

# Compare Items
data modify block ~ ~ ~ Items append from storage jabkacore:gui crafting_table.layout[]
data modify entity @s data."jabkacore.gui.compare" set from block ~ ~ ~ Items

tag @a remove jabkacore.gui.this