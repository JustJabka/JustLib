data modify storage justlib:sort element set from storage justlib:sort this.temp[-1]

function justlib:internal/sort/get_and_compare with storage justlib:sort in

data remove storage justlib:sort this.temp[-1]
execute if data storage justlib:sort this.temp[-1] run function justlib:internal/sort/step