
data modify entity @s Offers.Recipes[4].maxUses set value 2

# Trade 1
loot replace entity @s weapon.mainhand 2 loot obs:gameplay/trades/mason
data modify entity @s Offers.Recipes[5].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[5].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air