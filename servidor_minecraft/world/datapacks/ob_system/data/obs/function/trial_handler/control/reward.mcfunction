
tag @e[tag=cob.block] add cob.reward

function obs:trial_handler/control/reward_vault

execute as @e[tag=cob.block] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0 50 0 0.01 100 force
execute as @e[tag=cob.block] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0.0625 50 0.0625 0.01 900

execute as @a at @s run playsound minecraft:block.trial_spawner.charge_activate master @s 0 60 0 1000 0
execute as @a at @s run playsound minecraft:block.trial_spawner.eject_item master MCommand 0 60 0 1000 0.6
