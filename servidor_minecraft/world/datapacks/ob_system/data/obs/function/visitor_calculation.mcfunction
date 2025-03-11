execute store result score #cob.day_count cob.block run time query day

scoreboard players operation #cob.day_count cob.block %= #cob.con.30 cob.block

execute if score #cob.day_count cob.block matches 0 run scoreboard players set #temp_1 cob.block 0
execute if score #cob.day_count cob.block matches 0 run function obs:visitor_spawn


execute if score #cob.day_count cob.block matches 3.. at @e[tag=ob.visitor] run particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.01 10
execute if score #cob.day_count cob.block matches 3.. run tp @e[tag=ob.visitor] ~ -100 ~