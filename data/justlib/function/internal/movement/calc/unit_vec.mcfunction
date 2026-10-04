data modify storage justlib:math a set from entity @s Rotation[0]
data modify storage justlib:math b set from storage justlib:movement _.angle
function justlib:api/math/add

data modify storage justlib:math a set from storage justlib:math out

function justlib:api/math/cos/deg
data modify storage justlib:movement unit_vec[0] set from storage justlib:math out

function justlib:api/math/sin/deg
data modify storage justlib:movement unit_vec[2] set from storage justlib:math out