$data modify storage justlib:main effects.cleared set from storage justlib:main player_data.active_effects[{id:"$(id)"}]
function justlib:internal/effect/custom/on/clear
$data remove storage justlib:main player_data.active_effects[{id:"$(id)"}]