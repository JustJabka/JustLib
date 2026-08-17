# Placeholder Item
data modify storage justlib:recipes placeholder set value {id:"minecraft:poisonous_potato",count:1}

# All slots that are not used in crafting table (placeholder, null items, gui parts like understood?)
data modify storage justlib:recipes template set value [\
    {Slot:0b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/scroll/up"},"minecraft:item_model":"justlib:gui/move_up"}},\
    {Slot:9b,components:{"!minecraft:item_model":{}}},\
    {Slot:18b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/scroll/down"},"minecraft:item_model":"justlib:gui/move_down"}},\
]

# Placeholder Components
data modify storage justlib:recipes template_properties set value {\
    "minecraft:custom_data":{"justlib.clear":true},\
    "minecraft:tooltip_display":{"hide_tooltip":true},\
    "!minecraft:item_name":{},\
    "minecraft:max_stack_size":1\
}

data modify storage justlib:recipes template[] merge from storage justlib:recipes placeholder
data modify storage justlib:recipes template[].components merge from storage justlib:recipes template_properties

# Recipes Components
data modify storage justlib:recipes recipes_properties set value {\
    "minecraft:custom_data":{"justlib.clear":true,"dynamic":"function justlib:internal/recipes/action/craft"},\
}

# Slots where recipes will be placed
data modify storage justlib:recipes recipes_slots set value [1b,2b,3b,4b,5b,6b,7b,8b,10b,11b,12b,13b,14b,15b,16b,17b,19b,20b,21b,22b,23b,24b,25b,26b]