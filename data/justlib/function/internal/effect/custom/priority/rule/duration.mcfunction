scoreboard players operation #expires_at main = #duration_new main
$execute store result storage justlib:main player_data.active_effects[{id:"$(id)"}].duration int 1 run scoreboard players get #duration_new main
$execute store result storage justlib:main player_data.active_effects[{id:"$(id)"}].expires_at int 1 run scoreboard players operation #expires_at main += #gametime main