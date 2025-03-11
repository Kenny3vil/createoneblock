
scoreboard players add @s cob.trial_timer 10
execute if score #cob.trial.wave cob.trial matches 20.. run scoreboard players add @s cob.trial_timer 1
execute if score #cob.trial.wave cob.trial matches 40.. run scoreboard players add @s cob.trial_timer 1
execute if score #cob.trial.wave cob.trial matches 60.. run scoreboard players add @s cob.trial_timer 1
execute if score #cob.trial.wave cob.trial matches 80.. run scoreboard players add @s cob.trial_timer 1
execute if score #cob.trial.wave cob.trial matches 100.. run scoreboard players add @s cob.trial_timer 1

execute if score @s cob.trial_timer matches 125.. run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.125 0.5 0.125 0.01 10
execute if score @s cob.trial_timer matches 125.. run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.125 0.5 0.125 0.01 90 force
execute if score @s cob.trial_timer matches 140.. run function obs:trial_handler/ability/boss_ability

execute if block ~ ~ ~ minecraft:cobweb run setblock ~ ~ ~ air
execute if block ~0.3 ~ ~ minecraft:cobweb run setblock ~0.3 ~ ~ air
execute if block ~-0.3 ~ ~ minecraft:cobweb run setblock ~-0.3 ~ ~ air
execute if block ~ ~ ~0.3 minecraft:cobweb run setblock ~ ~ ~0.3 air
execute if block ~ ~ ~-0.3 minecraft:cobweb run setblock ~ ~ ~-0.3 air

execute if block ~ ~1 ~ minecraft:cobweb run setblock ~ ~1 ~ air
execute if block ~0.3 ~1 ~ minecraft:cobweb run setblock ~0.3 ~1 ~ air
execute if block ~-0.3 ~1 ~ minecraft:cobweb run setblock ~-0.3 ~1 ~ air
execute if block ~ ~1 ~0.3 minecraft:cobweb run setblock ~ ~1 ~0.3 air
execute if block ~ ~1 ~-0.3 minecraft:cobweb run setblock ~ ~1 ~-0.3 air