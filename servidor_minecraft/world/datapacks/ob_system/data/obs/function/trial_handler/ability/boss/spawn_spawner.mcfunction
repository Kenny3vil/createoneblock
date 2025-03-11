summon marker ~ ~ ~ {Tags:["cob.charge_spawner"]}

spreadplayers ~ ~ 6 12 false @e[tag=cob.charge_spawner]

execute as @e[tag=cob.charge_spawner] at @s run function obs:trial_handler/ability/boss/spawner_effect

kill @e[tag=cob.charge_spawner]