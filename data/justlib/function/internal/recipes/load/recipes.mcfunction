# Update Recipes
data modify storage justlib:recipes recipes set value []
function #justlib:recipes/register

# Cache Recipes
execute store result score #changed main run data modify storage justlib:recipes prev_recipes set from storage justlib:recipes recipes