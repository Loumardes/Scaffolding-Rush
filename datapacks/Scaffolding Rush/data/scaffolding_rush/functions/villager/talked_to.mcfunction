execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=blue] if entity @a[advancements={scaffolding_rush:grab_villager/blue=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=green] if entity @a[advancements={scaffolding_rush:grab_villager/green=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=red] if entity @a[advancements={scaffolding_rush:grab_villager/red=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 0 as @e[type=!minecraft:player,team=yellow] if entity @a[advancements={scaffolding_rush:grab_villager/yellow=true}] run function scaffolding_rush:clean_kill
execute if score GameRunning global matches 1 as @s run function scaffolding_rush:villager/give/any
