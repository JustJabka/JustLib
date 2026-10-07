# Don't use macro if there are only one passenger
execute unless data entity @s Passengers[1] run return run data modify storage justlib:main out set from entity @s Passengers[0].id

function justlib:internal/shared/get_entity_type/by_uuid with entity @e[tag=this,distance=..0.1,limit=1]