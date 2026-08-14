# Input: storage justlib:sort in:{target:STRING, data:ARRAY}
# Output storage justlib:sort out

# Examples:
# 1. in:{target:"element.index", data:[{index:0},{index:3},{index:1},{index:2}]}
# 2. in:{target:"element", scale:100, mode:"asc", data:[0.0,3.14,1.5,2.25]}

# Validate Input
# execute unless data storage justlib:sort in.target run return fail
execute unless data storage justlib:sort in.data[] run return fail
execute unless data storage justlib:sort in.predicate run return fail

# Fallback
# data modify storage justlib:sort args set value {scale:1,mode:"desc"}

# data modify storage justlib:sort args.target set from storage justlib:sort in.target
# execute if data storage justlib:sort in.scale run data modify storage justlib:sort args.scale set from storage justlib:sort in.scale
# execute if data storage justlib:sort in.mode run data modify storage justlib:sort args.mode set from storage justlib:sort in.mode

# Start
data remove storage justlib:sort out
data remove storage justlib:sort stack
data remove storage justlib:sort this

data modify storage justlib:sort temp set from storage justlib:sort in.data

stopwatch remove benchmark
stopwatch create benchmark

execute store result score #start main run stopwatch query benchmark 1000

function justlib:internal/sort/loop

execute store result score #end main run stopwatch query benchmark 1000
data modify storage benchmark results append value {name:"mocha"}
execute store result storage benchmark results[-1].time int 1 run scoreboard players operation #end main -= #start main

tellraw @a ["Time: ",{score:{name:"#end",objective:"main"}}," ms."]