# snow effect
execute anchored eyes positioned ^ ^ ^ store success storage justlib:effect _.drowning byte 1 run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if data storage justlib:effect {_:{drowning:true}} anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.drowning"]}

execute store success storage justlib:effect _.drowning byte 1 run fill ~ ~ ~ ~ ~ ~ minecraft:water replace #minecraft:air strict
execute if data storage justlib:effect {_:{drowning:true}} run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.drowning"]}

# revoke
advancement revoke @s only justlib:effect/drowning