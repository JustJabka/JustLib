data remove storage justlib:main key
data remove storage justlib:recipes craft
data remove storage justlib:recipes found
data modify storage justlib:main temp set from storage justlib:recipes recipe

function justlib:internal/recipes/key/shaped/loop
function justlib:internal/recipes/key/shaped/get with storage justlib:main

function justlib:internal/recipes/filters/start