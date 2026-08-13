data modify storage justlib:sort element set from storage justlib:sort this.temp[-1]
execute store result score #temp main run function justlib:api/shared/dynamic with storage justlib:main shared

execute if score #temp main < #mid main run data modify storage justlib:sort this.left append from storage justlib:sort this.temp[-1]
execute if score #temp main >= #mid main run data modify storage justlib:sort this.right append from storage justlib:sort this.temp[-1]

data remove storage justlib:sort this.temp[-1]
execute if data storage justlib:sort this.temp[-1] run function justlib:internal/sort/step