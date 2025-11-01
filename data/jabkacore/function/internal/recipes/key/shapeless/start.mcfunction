data remove storage jabkacore:main key
data remove storage jabkacore:recipes craft
data modify storage jabkacore:main in set from storage jabkacore:recipes recipe

function jabkacore:internal/recipes/key/sort/start
data modify storage jabkacore:main temp set from storage jabkacore:main out

function jabkacore:internal/recipes/key/shapeless/loop
function jabkacore:internal/recipes/key/shapeless/get with storage jabkacore:main