# Try place block
execute if entity @s[type=minecraft:glow_item_frame] run return run function justlib:internal/block/custom/try_place

# Destroy block
execute unless block ~ ~ ~ #justlib:block/custom run return run function justlib:api/block/custom/destroy

# Cancel update of block (only for marker)
execute if entity @s[type=minecraft:marker] if block ~ ~ ~ minecraft:campfire[lit=true] run return run function justlib:internal/block/custom/cancel_update

# Get light level (only for item display)
execute store result entity @s[type=minecraft:item_display] brightness.block int 1 \
    if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{periodic_tick:2}} \
    if entity @a[distance=..32,limit=1] \
run function justlib:internal/block/custom/find_light