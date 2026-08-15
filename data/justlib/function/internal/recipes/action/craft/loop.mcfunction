# Get Ingredient Amount
$execute store result score #amount main run clear @a[predicate=justlib:shared/id,limit=1] $(id) 0

# If not enought ingredient - cancel
$execute unless score #amount main matches $(count).. run return run scoreboard players set #temp main 0

# Mark craft as sucessfull
scoreboard players set #temp main 1

# Loop
data remove storage justlib:recipes ingredients[-1]
execute if data storage justlib:recipes ingredients[-1] run function justlib:internal/recipes/action/craft/loop with storage justlib:recipes ingredients[-1]