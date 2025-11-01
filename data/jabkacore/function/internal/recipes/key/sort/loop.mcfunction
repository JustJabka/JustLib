execute unless data storage jabkacore:main in[1] run return run data modify storage jabkacore:main out set from storage jabkacore:main in

function jabkacore:internal/recipes/key/context/in

data modify storage jabkacore:main this.temp set from storage jabkacore:main in
data modify storage jabkacore:main this.mid set from storage jabkacore:main this.temp[-1]
data remove storage jabkacore:main this.temp[-1]
execute store result score #mid main run data get storage jabkacore:main this.mid.index

data modify storage jabkacore:main this merge value {left:[],right:[],out:[]}
execute if data storage jabkacore:main this.temp[0] run function jabkacore:internal/recipes/key/sort/step

data modify storage jabkacore:main in set from storage jabkacore:main this.left
function jabkacore:internal/recipes/key/sort/loop

data modify storage jabkacore:main this.out append from storage jabkacore:main out[]
data modify storage jabkacore:main this.out append from storage jabkacore:main this.mid

data modify storage jabkacore:main in set from storage jabkacore:main this.right
function jabkacore:internal/recipes/key/sort/loop

data modify storage jabkacore:main this.out append from storage jabkacore:main out[]


data modify storage jabkacore:main out set from storage jabkacore:main this.out

function jabkacore:internal/recipes/key/context/out