# Input: storage justlib:sort in:{target:STRING, data:ARRAY}
# Output storage justlib:sort out

# Examples:
# 1. in:{target:"return run data get storage sort:main element.index", data:[{index:0},{index:3},{index:1},{index:2}]}
# 2. in:{target:"return run data get storage sort:main element 100", data:[0.0,3.14,1.5,2.25]}

data modify storage justlib:main shared.dynamic set from storage justlib:sort in.target
function justlib:internal/sort/start