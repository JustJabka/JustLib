# Try place block
execute if entity @s[type=minecraft:glow_item_frame] run return run function jabkacore:internal/block/custom/try_place

# Destroy block
execute unless block ~ ~ ~ #jabkacore:block/custom run return run function jabkacore:api/block/custom/destroy

# Cancel update of block (only for marker)
execute if entity @s[type=minecraft:marker] if block ~ ~ ~ minecraft:campfire[lit=true] run return run function jabkacore:internal/block/custom/cancel_update

# Get light level (only for item display)
execute store result entity @s[type=minecraft:item_display] brightness.block int 1 run function jabkacore:internal/block/custom/find_light