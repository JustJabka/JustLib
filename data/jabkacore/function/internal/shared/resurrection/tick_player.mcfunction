# On Death
execute if score @s deaths matches 1.. run function jabkacore:internal/shared/resurrection/on_death

# On Respawn
execute if score @s[tag=jabkacore.shared.waiting_for_respawn] on_respawn matches 1.. run function jabkacore:internal/shared/resurrection/on_respawn