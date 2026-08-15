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

# Page Slots
data modify storage justlib:recipes page_template set value [\
    {Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},\
    {Slot:10b},{Slot:11b},{Slot:12b},{Slot:13b},{Slot:14b},{Slot:15b},{Slot:16b},{Slot:17b},\
    {Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b},\
]