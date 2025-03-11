loot replace entity @s armor.head loot obs:technical/trial/tier_2
execute if predicate obs:chances/1 run loot replace entity @s armor.chest loot obs:technical/trial/fill_chestplate
execute if predicate obs:chances/1 run loot replace entity @s armor.chest loot obs:technical/trial/fill_chestplate

loot replace entity @s[type=!#minecraft:skeletons] weapon.mainhand loot obs:technical/trial/tier_2_weapon