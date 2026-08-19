data remove storage justlib:recipes pages

execute unless data storage justlib:recipes in[0] run return fail
execute unless data storage justlib:recipes meta.slots[0] run return fail

data modify storage justlib:recipes meta.template[] merge from storage justlib:recipes placeholder
data modify storage justlib:recipes meta.template[].components merge from storage justlib:recipes template_properties
data modify storage justlib:recipes temp set from storage justlib:recipes in

function justlib:internal/recipes/page/compile/pre
function justlib:internal/recipes/page/compile/loop

data modify storage justlib:recipes pages[][].components."minecraft:custom_data"."justlib.clear" set value true