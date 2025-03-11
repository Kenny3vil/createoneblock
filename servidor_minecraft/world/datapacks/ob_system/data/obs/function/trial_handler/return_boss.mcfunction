
particle minecraft:trial_spawner_detection_ominous ~ ~120 ~ 0 50 0 0.01 100 force
particle minecraft:trial_spawner_detection_ominous ~ ~120 ~ 0.0625 50 0.0625 0.01 900

effect give @s minecraft:slow_falling 5 0
spreadplayers ~ ~ 10 20 false @s

execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0 50 0 0.01 100 force
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0.0625 50 0.0625 0.01 900