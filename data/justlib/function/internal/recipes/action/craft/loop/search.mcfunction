# Get Ingredient Amount
$execute store result storage justlib:math a int 1 run clear @a[predicate=justlib:shared/id,limit=1] $(item) 0
$data modify storage justlib:math b set value $(count)

# If player has not enough ingredient - cancel
execute unless predicate justlib:math/greater_or_equal run return run data modify storage justlib:recipes _.success set value false

data modify storage justlib:recipes _.success set value true

# Loop
data remove storage justlib:recipes ingredients[-1]
execute if data storage justlib:recipes ingredients[-1] run function justlib:internal/recipes/action/craft/loop/search with storage justlib:recipes ingredients[-1]