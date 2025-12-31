data modify storage justlib:recipes recipe append value {}

execute store result score #pos main run data get storage justlib:main temp[0].Slot
execute store result storage justlib:recipes recipe[-1].pos int 1 run scoreboard players operation #pos main -= #anchor main

function justlib:internal/recipes/index/complete with storage justlib:main temp[0]
data remove storage justlib:main temp[0]

execute if data storage justlib:main temp[0] run function justlib:internal/recipes/index/loop