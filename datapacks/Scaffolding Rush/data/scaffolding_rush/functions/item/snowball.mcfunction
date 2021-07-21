summon arrow ~ ~ ~ {Silent:1b,damage:0.1,Tags:["snowArrow"]}
data modify entity @e[type=arrow,limit=1,sort=nearest] Owner set from entity @s Owner
data modify entity @e[type=arrow,limit=1,sort=nearest] LeftOwner set from entity @s LeftOwner
data modify entity @e[type=arrow,limit=1,sort=nearest] Motion set from entity @s Motion
kill @s

#<1.16
execute if score UseSnowball options matches 1 run replaceitem entity @a[scores={usedSnowball=1..}] weapon.mainhand air
execute if score UseSnowball options matches 1 run replaceitem entity @a[scores={usedSnowball=1..}] weapon.mainhand minecraft:snowball

#1.17
#execute if score UseSnowball options matches 1 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand air
#execute if score UseSnowball options matches 1 run item replace entity @a[scores={usedSnowball=1..}] weapon.mainhand minecraft:snowball

scoreboard players set @a usedSnowball 0