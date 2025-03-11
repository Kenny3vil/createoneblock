
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:dirt",Count:1b},maxUses:1,uses:0,priceMultiplier:0.05f,specialPrice:0,demand:0}

# Trade 1
loot replace entity @s weapon.mainhand 2 loot obs:gameplay/visitor/trade_4
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
