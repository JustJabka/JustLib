setblock ~ ~ ~ minecraft:barrel[facing=up]{CustomName:{translate:"block.jabkacore.crafting_table"},components:{"minecraft:custom_data":{"jabkacore.recipes":true}}}
execute align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {\
    Tags:["jabkacore.block","jabkacore.recipes"],\
    data:{"jabkacore.block.loot_table":"jabkacore:blocks/crafting_table"},\
    item:{id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"jabkacore:crafting_table"}},\
    Silent:true,brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],translation:[0f,0f,0f]}\
}