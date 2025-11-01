data modify storage jabkacore:recipes recipe append value {}

execute store result score #pos main run data get storage jabkacore:main temp[0].Slot
execute store result storage jabkacore:recipes recipe[-1].pos int 1 run scoreboard players operation #pos main -= #anchor main

function jabkacore:internal/recipes/index/complete with storage jabkacore:main temp[0]
data remove storage jabkacore:main temp[0]

execute if data storage jabkacore:main temp[0] run function jabkacore:internal/recipes/index/loop