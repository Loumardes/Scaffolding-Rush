

execute if score islandWait global matches 1.. run scoreboard players remove islandWait global 1
execute if score islandWait global matches 1.. run schedule function scaffolding_rush:game/islandwait 1s
execute if score islandWait global matches 0 run function scaffolding_rush:game/island