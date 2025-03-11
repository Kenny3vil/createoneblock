

# Trade 1
loot replace entity @s weapon.mainhand 2 loot obs:gameplay/trades/farmer
data modify entity @s Offers.Recipes[3].buy set from entity @s HandItems[0]
data modify entity @s Offers.Recipes[3].sell set from entity @s HandItems[1]

item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

tag @s add ob.handled