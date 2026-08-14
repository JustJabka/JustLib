# Input: storage justlib:sort in:{target:STRING, data:ARRAY}
# Output storage justlib:sort out

# Examples:
# 1. in:{target:"element.index", data:[{index:0},{index:3},{index:1},{index:2}]}
# 2. in:{target:"element", scale:100, mode:"asc", data:[0.0,3.14,1.5,2.25]}

# Validate Input
execute unless data storage justlib:sort in.target run return fail
execute unless data storage justlib:sort in.data[] run return fail

# Fallback
execute unless data storage justlib:sort in.scale run data modify storage justlib:sort in.scale set value 1
execute unless data storage justlib:sort in.mode run data modify storage justlib:sort in.mode set value "desc"

# Start
data remove storage justlib:sort out
data remove storage justlib:sort stack
data remove storage justlib:sort this

data modify storage justlib:sort temp set from storage justlib:sort in.data

function justlib:internal/sort/loop