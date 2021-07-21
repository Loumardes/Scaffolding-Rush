#function pour faire apparaitre une iles dans la zone de jeu

#random pos
summon minecraft:armor_stand 0 10 0 {Small:1,NoGravity:1,Tags:["islandPosition"]}
spreadplayers 0 0 3 30 false @e[tag=islandPosition]

#set to build limit
scoreboard players operation @e[tag=islandPosition] YEntity = LavaLevel global
scoreboard players operation @e[tag=islandPosition] YEntity += BuildHeight options

#random pos +/- 10 autour de la build limit
scoreboard players set randomMax global 20
function scaffolding_rush:random
scoreboard players remove random global 10
scoreboard players operation @e[tag=islandPosition] YEntity += random global

#update position
execute as @e[tag=islandPosition] store result entity @s Pos[1] double 1 run scoreboard players get @s YEntity

#load island
execute at @e[tag=islandPosition] run setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:-1,posY:-1,posZ:-1,name:"scaffolding_rush:itemsisland"}
execute at @e[tag=islandPosition] run setblock ~ ~-1 ~ minecraft:redstone_block

kill @e[tag=islandPosition]

#sumon item on island
execute at @e[tag=ItemsIsland] run summon item ~0.0 ~ ~0.0 {Item:{id:snowball,Count:3},Age:-10000}
kill @e[tag=ItemsIsland]

#repeat
scoreboard players operation islandWait global = IslandTimeSpwan options
function scaffolding_rush:game/islandwait