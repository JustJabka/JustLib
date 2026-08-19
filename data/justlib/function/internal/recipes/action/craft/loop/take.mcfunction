$clear @a[predicate=justlib:shared/id,limit=1] $(item) $(count)

data remove storage justlib:recipes ingredients[-1]
execute if data storage justlib:recipes ingredients[-1] run return run function justlib:internal/recipes/action/craft/loop/take with storage justlib:recipes ingredients[-1]