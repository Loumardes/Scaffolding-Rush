
#Rise Lava
execute unless score LavaSpeedTics options matches 0 run scoreboard players add LavaCountdown global 1
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaLevel global 1
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players add LavaEffect global 1
execute if score PerformanceMode options matches 0 if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_LavaLevel"] at @s run function scaffolding_rush:lava/rise_globally
execute if score LavaCountdown global >= LavaSpeedTics options as @e[type=marker,name="ScR_Build"] at @s run function scaffolding_rush:game/air_replace
execute if score LavaCountdown global >= LavaSpeedTics options run scoreboard players set LavaCountdown global 0

# check if player is under lava effect level
execute as @a[gamemode=!spectator, nbt=!{ActiveEffects:[{Id:2b}]}] if score LavaLevel global matches 4.. if score @s YEntity <= LavaEffect global run tellraw @s  ["",{"text":"[SR]","color":"gold"},{"text":" Watch out, ","color":"dark_red"},{"text":"the floor is really hot,","underlined":true,"color":"dark_red"},{"text":" you can feel it from here ! ","color":"dark_red"}]
execute as @a[gamemode=!spectator] if score LavaLevel global matches 4.. if score @s YEntity <= LavaEffect global run effect give @s slowness 2 1 true
execute at @a[gamemode=!spectator, nbt={ActiveEffects:[{Id:2b}]}] run particle falling_water ~ ~ ~ 0.1 0.1 0.1 1 5 normal

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:lava/simulate
execute as @e[type=villager,tag=!LobbyBase] at @s run function scaffolding_rush:lava/simulate

execute as @e[type=marker,name="ScR_LavaLevel",limit=1] run particle lava ~ ~ ~ 160 0 160 1 20 normal

#bossbar
execute store result bossbar filling_lava value run scoreboard players get LavaCountdown global

#villager egg respawn
function scaffolding_rush:villager/respawn/villager_loss_detection

#respawn dead players
execute as @e[scores={killed=1..},tag=!Respawning] run function scaffolding_rush:died/detect

#warn villagers height
function scaffolding_rush:villager/warn

#inform the player that he has the egg
title @a[tag=has_egg] actionbar ["",{"text":"||","obfuscated":true,"color":"gold"},{"text":" You have the egg !! Place it to respawn ! ","color":"red"},{"text":"||","obfuscated":true,"color":"gold"}]

execute if score GameLobby global matches 0 as @e[type=minecraft:villager] at @s if entity @a[distance=..0.5] run effect give @s minecraft:invisibility 1 1 true
execute if score GameLobby global matches 0 as @e[type=minecraft:villager] at @s unless block ~ ~ ~ #scaffolding_rush:air unless block ~ ~ ~ minecraft:scaffolding run tp @s ~ ~0.1 ~

execute if score GameEnd global matches 0 unless score DevelopementMode global matches 1 if score RemainingTeam global matches ..1 run function scaffolding_rush:game/finish

execute as @a[tag=has_egg,nbt=!{Inventory: [{id: "minecraft:squid_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:slime_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:mooshroom_spawn_egg"}]},nbt=!{Inventory: [{id: "minecraft:blaze_spawn_egg"}]}] run function scaffolding_rush:villager/give/any

execute as @a[gamemode=!spectator] at @s run function scaffolding_rush:game/build_limit

execute as @a[team=blue,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=blue,gamemode=!spectator] run function scaffolding_rush:game/elimination/blue
execute as @a[team=red,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=red,gamemode=!spectator] run function scaffolding_rush:game/elimination/red
execute as @a[team=green,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=green,gamemode=!spectator] run function scaffolding_rush:game/elimination/green
execute as @a[team=yellow,gamemode=spectator,tag=!TeamEliminated,limit=1] unless entity @a[team=yellow,gamemode=!spectator] run function scaffolding_rush:game/elimination/yellow

# check if the player is close to the lava [proximity-rush nerf]
execute as @a if score LavaLevel global matches 7.. if score @s YEntity 