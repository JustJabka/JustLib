# snow effect
execute anchored eyes positioned ^ ^ ^ store success score #temp justlib.effect.freezing run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if score #temp justlib.effect.freezing matches 1 anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.freezing"]}
execute store success score #temp justlib.effect.freezing run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if score #temp justlib.effect.freezing matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.freezing"]}

# revoke
advancement revoke @s only justlib:effect/freezing