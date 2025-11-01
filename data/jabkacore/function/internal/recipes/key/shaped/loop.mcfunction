data modify storage jabkacore:main key append from storage jabkacore:main temp[0].pos
data modify storage jabkacore:main key append from storage jabkacore:main temp[0].index
data remove storage jabkacore:main temp[0]
execute if data storage jabkacore:main temp[0] run function jabkacore:internal/recipes/key/shaped/loop