# Get Default Components
loot replace entity @s weapon.offhand fish {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:poisonous_potato",modifier:{type:"minecraft:copy_components",source:"tool"}}]}]} ~ ~ ~ mainhand

# Set Output
data modify storage justlib:main out set from entity @s equipment.offhand.components

# Remove Armo Stand
kill @s