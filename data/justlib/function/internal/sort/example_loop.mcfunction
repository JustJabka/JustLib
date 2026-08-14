data modify storage justlib:sort in.data append value {}
execute store result storage justlib:sort in.data[-1].price float 0.1 run random value 1..1000
execute store result storage justlib:sort in.data[-1].date float 0.1 run random value 1..1000
execute store result storage justlib:sort in.data[-1].id float 0.1 run random value 1..1000

scoreboard players remove #itt main 1
execute if score #itt main matches 1.. run function justlib:internal/sort/example_loop