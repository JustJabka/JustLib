# Skip all дюзюдо приколюшки
execute if data storage justlib:main {in:"weapon.mainhand"} run return run function justlib:internal/shared/get_default_component/from/entity_mainhand

tag @s add this
execute positioned as @s summon minecraft:armor_stand run function justlib:internal/shared/get_default_component/from/entity
tag @s remove this