$execute unless data storage justlib:main player_data.active_effects[{id:"$(id)"}] run return run data remove storage justlib:main effects.existing

$data modify storage justlib:main effects.existing set from storage justlib:main player_data.active_effects[{id:"$(id)"}]