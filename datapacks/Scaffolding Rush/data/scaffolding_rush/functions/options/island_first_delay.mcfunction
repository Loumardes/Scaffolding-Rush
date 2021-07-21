
scoreboard players operation IslandFirstSpwan options = @s opt_island_first

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The time of the first spawn of island has been set to ","color":"gray"},{"score":{"name":"IslandFirstSpwan","objective":"options"},"color":"gold"},{"text":" seconds","color":"gold"}]

scoreboard players set @a opt_island_first 0
scoreboard players enable @a opt_island_first

function scaffolding_rush:options/refresh
