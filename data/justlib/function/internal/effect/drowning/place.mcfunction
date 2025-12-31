# snow effect
execute anchored eyes positioned ^ ^ ^ store success score #temp justlib.effect.drowning run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if score #temp justlib.effect.drowning matches 1 anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.drowning"]}
execute store success score #temp justlib.effect.drowning run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if score #temp justlib.effect.drowning matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.drowning"]}

# revoke
advancement revoke @s only justlib:effect/drowning