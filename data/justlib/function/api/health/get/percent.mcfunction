execute store result storage justlib:math a float 1 run function justlib:api/health/get/current
execute store result storage justlib:math b float 1 run function justlib:api/health/get/max

function justlib:api/math/div
return run data modify storage justlib:health percent set from storage justlib:math out