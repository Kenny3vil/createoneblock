
execute if score @e[tag=cob.block,limit=1] cob.trial_timer matches 6 at @e[tag=cob.block,limit=1,tag=!cob.ominous] run particle minecraft:trial_spawner_detection ~ ~ ~ 0.25 0 0.25 0.01 25
execute if score @e[tag=cob.block,limit=1] cob.trial_timer matches 6 at @e[tag=cob.block,limit=1,tag=cob.ominous] run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.25 0 0.25 0.01 25

scoreboard players reset #cob.temp_1 cob.trial

scoreboard players add #cob.temp_1 cob.trial 0
execute as @e[tag=cob.trial_mob] run scoreboard players add #cob.temp_1 cob.trial 1

execute if score #cob.temp_1 cob.trial < @e[tag=cob.block,limit=1] cob.mob_cap run function obs:trial_handler/start_spawning
execute if score #cob.temp_1 cob.trial < @e[tag=cob.block,limit=1] cob.mob_cap at @e[tag=cob.block,limit=1,tag=!cob.ominous] run particle minecraft:trial_spawner_detection ~ ~1 ~ 0.25 0 0.25 0.01 25
execute if score #cob.temp_1 cob.trial < @e[tag=cob.block,limit=1] cob.mob_cap at @e[tag=cob.block,limit=1,tag=cob.ominous] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.25 0 0.25 0.01 25
execute if score #cob.temp_1 cob.trial < @e[tag=cob.block,limit=1] cob.mob_cap at @e[tag=cob.block,limit=1] run playsound minecraft:block.trial_spawner.spawn_mob block @a[distance=..16]

scoreboard players reset #cob.temp_2 cob.trial
scoreboard players reset #cob.temp_1 cob.trial

execute if entity @e[tag=cob.block,tag=cob.ominous] if predicate obs:chances/4 run function obs:trial_handler/item_spawn/main
execute if score #cob.temp_1 cob.trial >= @e[tag=cob.block,limit=1] cob.mob_cap if entity @e[tag=cob.block,tag=cob.ominous] if predicate obs:chances/3 run function obs:trial_handler/item_spawn/main