## HEAL_RESULT = CURRENT_HP + HEAL
scoreboard players operation #heal_result justlib.health = @s justlib.health.current
scoreboard players operation #heal_result justlib.health += $heal justlib.health

## MAX_HEALTH = MAX_HEALTH - HEAL_RESULT
scoreboard players operation #need_to_heal justlib.health = @s justlib.health.max
execute store result storage justlib:main macros.health.need_to_heal int -1 run scoreboard players operation #need_to_heal justlib.health -= #heal_result justlib.health