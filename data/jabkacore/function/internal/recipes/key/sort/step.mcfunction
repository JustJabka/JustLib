execute store result score #temp main run data get storage jabkacore:main this.temp[0].index

execute if score #temp main < #mid main run data modify storage jabkacore:main this.left append from storage jabkacore:main this.temp[0]
execute if score #temp main >= #mid main run data modify storage jabkacore:main this.right append from storage jabkacore:main this.temp[0]

data remove storage jabkacore:main this.temp[0]
execute if data storage jabkacore:main this.temp[0] run function jabkacore:internal/recipes/key/sort/step