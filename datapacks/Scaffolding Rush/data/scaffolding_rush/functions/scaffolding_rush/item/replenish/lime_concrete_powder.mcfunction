#>1.16
replaceitem entity @a[advancements={scaffolding_rush:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand air
replaceitem entity @a[advancements={scaffolding_rush:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand minecraft:lime_concrete_powder{CanPlaceOn:["minecraft:scaffolding","#scaffolding_rush:notowerlobby"],CanDestroy:["minecraft:scaffolding","#scaffolding_rush:lobby","#scaffolding_rush:tower"]}

#1.17
#item replace entity @a[advancements={scaffolding_rush:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand air
#item replace entity @a[advancements={scaffolding_rush:scaffolding_rush/replenish/lime_concrete_powder=true}] weapon.mainhand minecraft:lime_concrete_powder

advancement revoke @a only scaffolding_rush:scaffolding_rush/replenish/lime_concrete_powder
