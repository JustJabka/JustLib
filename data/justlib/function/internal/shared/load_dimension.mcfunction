forceload add 0 0
setblock 0 0 0 minecraft:shulker_box
execute unless entity 00000000-0000-0000-0000-000000000000 run summon minecraft:marker 0 0 0 {UUID:uuid("00000000-0000-0000-0000-000000000000")}
execute unless entity 00000000-0000-0000-0000-000000000001 run summon minecraft:item_display 0 0 0 {UUID:uuid("00000000-0000-0000-0000-000000000001")}