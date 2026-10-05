# snow effect
execute anchored eyes positioned ^ ^ ^ store success storage justlib:effect _.freezing byte 1 run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if data storage justlib:effect {_:{freezing:true}} anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.freezing"]}

execute store success storage justlib:effect _.freezing byte 1 run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace #minecraft:air strict
execute if data storage justlib:effect {_:{freezing:true}} run summon minecraft:marker ~ ~ ~ {Tags:["justlib.effect.marker","justlib.effect.freezing"]}

# revoke
advancement revoke @s only justlib:effect/freezing