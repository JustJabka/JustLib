execute store result score #temp main run data get storage justlib:main this.temp[0].index

execute if score #temp main < #mid main run data modify storage justlib:main this.left append from storage justlib:main this.temp[0]
execute if score #temp main >= #mid main run data modify storage justlib:main this.right append from storage justlib:main this.temp[0]

data remove storage justlib:main this.temp[0]
execute if data storage justlib:main this.temp[0] run function justlib:internal/recipes/key/sort/step