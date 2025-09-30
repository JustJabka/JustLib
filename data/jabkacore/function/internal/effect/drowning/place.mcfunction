# snow effect
execute anchored eyes positioned ^ ^ ^ store success score #temp jabkacore.effect.drowning run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if score #temp jabkacore.effect.drowning matches 1 anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["jabkacore.effect.marker","jabkacore.effect.drowning"]}
execute store success score #temp jabkacore.effect.drowning run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if score #temp jabkacore.effect.drowning matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["jabkacore.effect.marker","jabkacore.effect.drowning"]}

# revoke
advancement revoke @s only jabkacore:effect/drowning