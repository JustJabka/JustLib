# TODO: Don't forget to remove this after development is finished
data modify storage justlib:recipes recipes append value {id:"minecraft:enchanted_golden_apple",count:1,components:{"minecraft:custom_data":{ingredients:[\
    {item:"minecraft:gold_block",count:8},\
    {item:"minecraft:apple",count:1},\
]}}}

data modify storage justlib:recipes recipes append value {id:"minecraft:emerald",count:1,components:{"minecraft:custom_data":{ingredients:[\
    {item:"minecraft:diamond[minecraft:custom_data~{test:true}]",count:64},\
]}}}