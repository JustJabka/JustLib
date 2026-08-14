# Placeholder Item
data modify storage justlib:recipes placeholder set value {id:"minecraft:poisonous_potato",count:1}

# All slots that are not used in crafting table (placeholder, null items, gui parts like understood?)
data modify storage justlib:recipes template set value [\
    {Slot:0b,components:{"minecraft:custom_data":{"dynamic":"say scroll up"}}},\
    {Slot:9b},\
    {Slot:18b,components:{"minecraft:custom_data":{"dynamic":"say scroll down"}}},\
]

# Placeholder Components
data modify storage justlib:recipes shared_properties set value {\
    "minecraft:custom_data":{"justlib.clear":true},\
    "minecraft:tooltip_display":{"hide_tooltip":true},\
    "!minecraft:item_name":{},\
    "minecraft:max_stack_size":1\
}

data modify storage justlib:recipes template[] merge from storage justlib:recipes placeholder

# Apply Placeholder Components
data modify storage justlib:recipes template[].components merge from storage justlib:recipes shared_properties

# Register recipes
function #justlib:recipes/register