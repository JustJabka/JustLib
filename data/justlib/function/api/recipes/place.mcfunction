setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{translate:"block.justlib.crafting_table"},components:{"minecraft:custom_data":{"justlib.recipes":true}}}
execute align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {\
    Tags:["justlib.block","justlib.recipes"],\
    data:{"justlib.block.loot_table":"justlib:blocks/crafting_table"},\
    item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"justlib:crafting_table"}},\
    Silent:true,brightness:{sky:15,block:0},width:1f,height:1f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}\
}