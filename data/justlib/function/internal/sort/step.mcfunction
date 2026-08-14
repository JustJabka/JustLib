data modify storage justlib:sort element set from storage justlib:sort this.temp[-1]

execute store result score #temp main run function justlib:internal/sort/get with storage justlib:sort in
function justlib:internal/sort/compare with storage justlib:sort in

data remove storage justlib:sort this.temp[-1]
execute if data storage justlib:sort this.temp[-1] run function justlib:internal/sort/step