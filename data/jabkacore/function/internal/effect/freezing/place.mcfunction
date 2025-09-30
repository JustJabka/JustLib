# snow effect
execute anchored eyes positioned ^ ^ ^ store success score #temp jabkacore.effect.freezing run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if score #temp jabkacore.effect.freezing matches 1 anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["jabkacore.effect.marker","jabkacore.effect.freezing"]}
execute store success score #temp jabkacore.effect.freezing run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if score #temp jabkacore.effect.freezing matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["jabkacore.effect.marker","jabkacore.effect.freezing"]}

# revoke
advancement revoke @s only jabkacore:effect/freezing