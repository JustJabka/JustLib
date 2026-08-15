scoreboard players set #rows main 3
scoreboard players set #row_slots main 8
scoreboard players set #slot_offset main 1

scoreboard players operation #page_slots main = #rows main
scoreboard players operation #page_slots main *= #row_slots main

scoreboard players set #100 const 100

# Placeholder Item
data modify storage justlib:recipes placeholder set value {id:"minecraft:poisonous_potato",count:1}

# All slots that are not used in crafting table (placeholder, null items, gui parts like understood?)
data modify storage justlib:recipes template set value [\
    {Slot:0b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/scroll/up"}}},\
    {Slot:9b},\
    {Slot:18b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/scroll/down"}}},\
]

# Placeholder Components
data modify storage justlib:recipes template_properties set value {\
    "minecraft:custom_data":{"justlib.clear":true},\
    "minecraft:tooltip_display":{"hide_tooltip":true},\
    "!minecraft:item_name":{},\
    "minecraft:max_stack_size":1\
}

data modify storage justlib:recipes recipes_properties set value {\
    "minecraft:custom_data":{"justlib.clear":true},\
}

data modify storage justlib:recipes template[] merge from storage justlib:recipes placeholder

# Apply Placeholder Components
data modify storage justlib:recipes template[].components merge from storage justlib:recipes template_properties

# Register recipes
data modify storage justlib:recipes recipes set value []
function #justlib:recipes/register
data modify storage justlib:recipes recipes[].components merge from storage justlib:recipes recipes_properties

execute store result score #recipes main if data storage justlib:recipes recipes[]

scoreboard players operation #pages main = #recipes main
scoreboard players operation #pages main *= #100 const

scoreboard players operation #pages main /= #page_slots main

function justlib:internal/recipes/pages/add_loop