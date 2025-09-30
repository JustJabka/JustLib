## HEAL_RESULT = CURRENT_HP + HEAL
scoreboard players operation #heal_result jabkacore.health = @s jabkacore.health.current
scoreboard players operation #heal_result jabkacore.health += $heal jabkacore.health

## MAX_HEALTH = MAX_HEALTH - HEAL_RESULT
scoreboard players operation #need_to_heal jabkacore.health = @s jabkacore.health.max
execute store result storage jabkacore:main macros.health.need_to_heal int -1 run scoreboard players operation #need_to_heal jabkacore.health -= #heal_result jabkacore.health