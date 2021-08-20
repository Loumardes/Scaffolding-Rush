scoreboard players enable @a opt_lavaproxnerf

scoreboard players operation LavaOffset options = @s opt_lavaproxnerf

execute if score LavaOffset options matches 15.. run scoreboard players set LavaOffset options 15
execute if score LavaOffset options matches ..0 run scoreboard players set LavaOffset options 0

tellraw @a ["",{"text":"[SR] ","color":"gold"},{"text":"The lava effect area has been set to ","color":"gray"},{"score":{"name":"LavaOffset","objective":"options"},"color":"gold"},{"text":" blocks","color":"gray"}]

scoreboard players set @s opt_lavaproxnerf 0

function scaffolding_rush:options/refresh