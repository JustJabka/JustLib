data modify storage justlib:main key append from storage justlib:main temp[0].index
data remove storage justlib:main temp[0]
execute if data storage justlib:main temp[0] run function justlib:internal/recipes/key/shapeless/loop