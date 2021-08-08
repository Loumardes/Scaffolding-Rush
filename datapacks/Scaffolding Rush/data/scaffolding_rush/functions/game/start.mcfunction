tag @a remove TeamEliminated
scoreboard players set GameRunning global 1
scoreboard players set GameLoading global 0
scoreboard players set LavaCountdown global 0
scoreboard players set @a killed 0
clear @a

gamemode survival @a[team=!]
#give items
execute as @a[team=!] run function scaffolding_rush:game/give_items

execute as @a[team=blue,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/give/blue
execute as @a[team=red,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/give/red
execute as @a[team=yellow,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/give/yellow
execute as @a[team=green,gamemode=!spectator,sort=random,limit=1] run function scaffolding_rush:villager/give/green

function scaffolding_rush:broadcast/start
function scaffolding_rush:lava/sound

team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify red seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true