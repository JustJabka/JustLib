data remove storage justlib:recipes static

data modify storage justlib:recipes in set from storage justlib:recipes recipes

# Left
data modify storage justlib:recipes meta set value {template:[\
    {Slot:0b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_up"}},\
    {Slot:9b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:18b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_down"}},\
], slots:[1b,2b,3b,4b,5b,6b,7b,8b,10b,11b,12b,13b,14b,15b,16b,17b,19b,20b,21b,22b,23b,24b,25b,26b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages

# Right
data modify storage justlib:recipes meta set value {template:[\
    {Slot:8b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_up"}},\
    {Slot:17b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:26b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_down"}},\
], slots:[0b,1b,2b,3b,4b,5b,6b,7b,9b,10b,11b,12b,13b,14b,15b,16b,18b,19b,20b,21b,22b,23b,24b,25b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages

# Dock
data modify storage justlib:recipes meta set value {template:[\
    {Slot:21b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_left"}},\
    {Slot:22b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:23b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_right"}},\
], slots:[0b,1b,2b,3b,4b,5b,6b,7b,8b,9b,10b,11b,12b,13b,14b,15b,16b,17b,18b,19b,20b,24b,25b,26b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages

# Island
data modify storage justlib:recipes meta set value {template:[\
    {Slot:3b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_left"}},\
    {Slot:4b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:5b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_right"}},\
], slots:[0b,1b,2b,6b,7b,8b,9b,10b,11b,12b,13b,14b,15b,16b,17b,18b,19b,20b,21b,22b,23b,24b,25b,26b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages

# Bottom
data modify storage justlib:recipes meta set value {template:[\
    {Slot:18b,components:{"!minecraft:item_model":{}}},\
    {Slot:19b,components:{"!minecraft:item_model":{}}},\
    {Slot:20b,components:{"!minecraft:item_model":{}}},\
    {Slot:21b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_left"}},\
    {Slot:22b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:23b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_right"}},\
    {Slot:24b,components:{"!minecraft:item_model":{}}},\
    {Slot:25b,components:{"!minecraft:item_model":{}}},\
    {Slot:26b,components:{"!minecraft:item_model":{}}},\
], slots:[0b,1b,2b,3b,4b,5b,6b,7b,8b,9b,10b,11b,12b,13b,14b,15b,16b,17b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages

# Top
data modify storage justlib:recipes meta set value {template:[\
    {Slot:0b,components:{"!minecraft:item_model":{}}},\
    {Slot:1b,components:{"!minecraft:item_model":{}}},\
    {Slot:2b,components:{"!minecraft:item_model":{}}},\
    {Slot:3b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":-1},"minecraft:item_model":"justlib:gui/move_left"}},\
    {Slot:4b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/mode/change"},"minecraft:item_model":"justlib:gui/settings"}},\
    {Slot:5b,components:{"minecraft:custom_data":{"dynamic":"function justlib:internal/recipes/action/page/step","offset":1},"minecraft:item_model":"justlib:gui/move_right"}},\
    {Slot:6b,components:{"!minecraft:item_model":{}}},\
    {Slot:7b,components:{"!minecraft:item_model":{}}},\
    {Slot:8b,components:{"!minecraft:item_model":{}}},\
], slots:[9b,10b,11b,12b,13b,14b,15b,16b,17b,18b,19b,20b,21b,22b,23b,24b,25b,26b]}
function justlib:internal/recipes/page/compile/start

data modify storage justlib:recipes static append from storage justlib:recipes pages