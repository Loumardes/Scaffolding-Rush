
scoreboard players operation IslandTimeSpwan options = @s opt_island_spawn

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The time of spawn between two island has been set to ","color":"gray"},{"score":{"name":"IslandTimeSpwan","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]

scoreboard players set @a opt_island_spawn 0
scoreboard players enable @a opt_island_spawn

function scaffolding_rush:options/refresh
