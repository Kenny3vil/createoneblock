execute store result score #cob.temp_1 cob.block run data get entity @s Offers.Recipes[0].uses
execute store result score #cob.temp_2 cob.block run data get entity @s Offers.Recipes[1].uses
execute store result score #cob.temp_3 cob.block run data get entity @s Offers.Recipes[2].uses
execute store result score #cob.temp_4 cob.block run data get entity @s Offers.Recipes[3].uses

execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. run function obs:visitor_last

execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run data remove entity @s Xp
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run data remove entity @s Offers.Recipes[]
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run data remove entity @s VillagerData.profession
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run data modify entity @s Xp set value 0
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run tag @s remove ob.villager
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run data modify entity @s Age set value 0
execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run tag @s remove ob.visitor

execute if score #cob.temp_1 cob.block matches 1.. if score #cob.temp_2 cob.block matches 1.. if score #cob.temp_3 cob.block matches 1.. if score #cob.temp_4 cob.block matches 1.. run advancement grant @a[distance=..7] only obs:ob/world