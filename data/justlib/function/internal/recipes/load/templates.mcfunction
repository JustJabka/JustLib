# Placeholder Item
data modify storage justlib:recipes placeholder set value {id:"minecraft:poisonous_potato",count:1}

# Placeholder Components
data modify storage justlib:recipes template_properties set value {\
    "minecraft:tooltip_display":{"hide_tooltip":true},\
    "!minecraft:item_name":{},\
    "minecraft:max_stack_size":1\
}

# Recipes Components
data modify storage justlib:recipes recipes_properties set value {\
    "minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/craft/start"},\
}