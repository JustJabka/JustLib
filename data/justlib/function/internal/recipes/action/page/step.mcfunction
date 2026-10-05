data modify storage justlib:recipes _.page set from entity @s data.page
data modify storage justlib:recipes _.page set compute default integer {type:"minecraft:add",inputs:[{type:"minecraft:storage",storage:"justlib:recipes",path:"_.page"},{type:"minecraft:storage",storage:"justlib:recipes",path:"clicked.offset"}]}

function justlib:internal/recipes/action/page/change