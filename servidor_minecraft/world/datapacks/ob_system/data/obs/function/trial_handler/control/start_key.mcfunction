
function obs:trial_handler/control/start

execute as @e[tag=cob.block,tag=!cob.ominous] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0 50 0 0.01 100 force
execute as @e[tag=cob.block,tag=!cob.ominous] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0.0625 50 0.0625 0.01 900

execute as @e[tag=cob.block,tag=cob.ominous] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0 50 0 0.01 100 force
execute as @e[tag=cob.block,tag=cob.ominous] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0.0625 50 0.0625 0.01 900

kill @s