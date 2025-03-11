
kill @e[tag=cob.mob_spawner]

summon marker ~ ~ ~ {Tags:["cob.mob_spawner"]}

spreadplayers 0 0 20 32 under 90 false @e[tag=cob.mob_spawner]

execute as @e[tag=cob.mob_spawner] at @s if entity @a[distance=..6] run function obs:trial_handler/mob_spawner
execute as @e[tag=cob.mob_spawner] at @s unless entity @a[distance=..6] run function obs:trial_handler/spawn_mob/mob_spawner

kill @e[tag=cob.mob_spawner]