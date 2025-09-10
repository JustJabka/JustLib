# Main
scoreboard objectives add jabkacore.main dummy

scoreboard objectives add jabkacore.air air
scoreboard objectives add jabkacore.armor armor
scoreboard objectives add jabkacore.food food
scoreboard objectives add jabkacore.hearts health

scoreboard objectives add jabkacore.id dummy

# Health Module
scoreboard objectives add jabkacore.health dummy
scoreboard objectives add jabkacore.health.max dummy
scoreboard objectives add jabkacore.health.current dummy
scoreboard objectives add jabkacore.health.percent dummy

# Effects Module
scoreboard objectives add jabkacore.effect.freezing dummy
scoreboard objectives add jabkacore.effect.drowning dummy

# GUI Module
scoreboard objectives add jabkacore.gui dummy
scoreboard objectives add jabkacore.gui.active_recipe dummy
execute unless score #inited jabkacore.gui matches 1 run function jabkacore:internal/crafting_table/init

# Math Module
scoreboard objectives add jabkacore.math dummy
scoreboard objectives add const dummy
execute unless score #inited jabkacore.math matches 1 run function jabkacore:internal/math/init

# Movement Module
scoreboard objectives add jabkacore.movement dummy