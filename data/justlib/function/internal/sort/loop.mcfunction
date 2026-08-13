# выход из рекурсии при максимальной глубине
execute unless data storage justlib:sort temp[1] run return run data modify storage justlib:sort out set from storage justlib:sort temp
# реализация quick sort 
function justlib:internal/sort/context/in
data modify storage justlib:sort this.temp set from storage justlib:sort temp
data modify storage justlib:sort this.mid set from storage justlib:sort this.temp[-1]
data remove storage justlib:sort this.temp[-1]
data modify storage justlib:sort element set from storage justlib:sort this.mid
execute store result score #mid main run function justlib:api/shared/dynamic with storage justlib:main shared

data modify storage justlib:sort this merge value {left:[],right:[],out:[]}
function justlib:internal/sort/step

data modify storage justlib:sort temp set from storage justlib:sort this.left
function justlib:internal/sort/loop
data modify storage justlib:sort this.out append from storage justlib:sort out[]

data modify storage justlib:sort this.out append from storage justlib:sort this.mid

data modify storage justlib:sort temp set from storage justlib:sort this.right
function justlib:internal/sort/loop
data modify storage justlib:sort this.out append from storage justlib:sort out[]


data modify storage justlib:sort out set from storage justlib:sort this.out

function justlib:internal/sort/context/out