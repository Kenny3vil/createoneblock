scoreboard players add #temp_1 cob.block 1

execute if block ~ ~-1 ~ #obs:spawn_check run tag @s add fail
execute unless score #temp_1 cob.block matches ..40 run tag @s add fail

execute if entity @s[tag=fail,tag=ob.trader_spawn] if score #temp_1 cob.block matches ..40 run function obs:random_trader
execute if entity @s[tag=fail,tag=ob.visitor_spawn] if score #temp_1 cob.block matches ..40 run function obs:visitor_spawn

kill @s[tag=fail]