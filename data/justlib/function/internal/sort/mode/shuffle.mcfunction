# Pls don't use ts🙏
execute if predicate {type:"minecraft:random_chance",chance:0.5} run return run data modify storage justlib:sort this.left append from storage justlib:sort this.temp[-1]
data modify storage justlib:sort this.right append from storage justlib:sort this.temp[-1]