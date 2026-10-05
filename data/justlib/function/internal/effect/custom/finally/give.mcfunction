# Store all data
data modify storage justlib:main player_data.active_effects append from storage justlib:effect give

# Calc expire stamp
data modify storage justlib:main player_data.active_effects[-1].expires_at set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"justlib:main",path:"gametime"},{type:"minecraft:storage",storage:"justlib:effect",path:"give.duration"}]}

function justlib:internal/effect/custom/try/start