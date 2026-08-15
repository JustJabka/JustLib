function justlib:internal/recipes/action/craft/get_ingredients

# Give item if it's free
execute if function justlib:internal/recipes/action/craft/is_free \
    in justlib:main positioned 0 0 0 \
run return run function justlib:internal/recipes/action/craft/give

# Search Ingredients
function justlib:internal/recipes/action/craft/loop/search with storage justlib:recipes ingredients[-1]

# If player has not enough ingredient - cancel
execute unless score #temp main matches 1 run return run playsound minecraft:entity.villager.no block @a[predicate=justlib:shared/id,limit=1]

# Take Ingredients
function justlib:internal/recipes/action/craft/get_ingredients
function justlib:internal/recipes/action/craft/loop/take with storage justlib:recipes ingredients[-1]

# Give item
execute in justlib:main positioned 0 0 0 run function justlib:internal/recipes/action/craft/give