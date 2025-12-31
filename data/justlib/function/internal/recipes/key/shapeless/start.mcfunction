data remove storage justlib:main key
data remove storage justlib:recipes craft
data modify storage justlib:main in set from storage justlib:recipes recipe

function justlib:internal/recipes/key/sort/start
data modify storage justlib:main temp set from storage justlib:main out

function justlib:internal/recipes/key/shapeless/loop
function justlib:internal/recipes/key/shapeless/get with storage justlib:main