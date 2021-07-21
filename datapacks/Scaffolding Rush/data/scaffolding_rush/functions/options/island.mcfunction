
execute store success score SpawnIsland options if score SpawnIsland options matches 0

execute if score SpawnIsland options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The island spawn has been ","color":"gray"},{"text":"desactivated","color":"red"}]
execute unless score SpawnIsland options matches 0 run tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The island spawn has been ","color":"gray"},{"text":"activated","color":"green"}]

scoreboard players set @a opt_island 0
scoreboard players enable @a opt_island

function scaffolding_rush:options/refresh
