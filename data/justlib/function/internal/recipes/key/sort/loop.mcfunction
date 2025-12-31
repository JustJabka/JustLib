execute unless data storage justlib:main in[1] run return run data modify storage justlib:main out set from storage justlib:main in

function justlib:internal/recipes/key/context/in

data modify storage justlib:main this.temp set from storage justlib:main in
data modify storage justlib:main this.mid set from storage justlib:main this.temp[-1]
data remove storage justlib:main this.temp[-1]
execute store result score #mid main run data get storage justlib:main this.mid.index

data modify storage justlib:main this merge value {left:[],right:[],out:[]}
execute if data storage justlib:main this.temp[0] run function justlib:internal/recipes/key/sort/step

data modify storage justlib:main in set from storage justlib:main this.left
function justlib:internal/recipes/key/sort/loop

data modify storage justlib:main this.out append from storage justlib:main out[]
data modify storage justlib:main this.out append from storage justlib:main this.mid

data modify storage justlib:main in set from storage justlib:main this.right
function justlib:internal/recipes/key/sort/loop

data modify storage justlib:main this.out append from storage justlib:main out[]


data modify storage justlib:main out set from storage justlib:main this.out

function justlib:internal/recipes/key/context/out