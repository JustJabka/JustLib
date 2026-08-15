# Get Required Ingredients
data modify storage justlib:recipes ingredients set value []
data modify storage justlib:recipes ingredients set from storage justlib:recipes clicked.ingredients

# Check For Ingredients
execute unless data storage justlib:recipes ingredients[0] run return run say free item!
function justlib:internal/recipes/action/craft/loop with storage justlib:recipes ingredients[-1]

execute unless score #temp main matches 1 run return run say not enought resources!
say successfull craft!