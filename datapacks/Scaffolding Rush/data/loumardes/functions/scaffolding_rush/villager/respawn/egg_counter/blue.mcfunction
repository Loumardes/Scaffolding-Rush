clear @a[team=blue] minecraft:ghast_spawn_egg 1
execute as @s[team=blue,nbt={Inventory:[{id:"minecraft:ghast_spawn_egg"}]}] run schedule function loumardes:scaffolding_rush/villager/respawn/egg_conter/blue 1s
