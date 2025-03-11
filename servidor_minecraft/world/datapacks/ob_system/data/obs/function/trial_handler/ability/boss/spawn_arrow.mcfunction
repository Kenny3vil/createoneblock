summon marker ~ ~ ~ {Tags:["cob.charge_spawner"]}

execute at @r run spreadplayers ~ ~ 3 6 false @e[tag=cob.charge_spawner]

execute as @e[tag=cob.charge_spawner] at @s run function obs:trial_handler/ability/boss/arrows

kill @e[tag=cob.charge_spawner]