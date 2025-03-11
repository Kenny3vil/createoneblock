
#execute if entity @e[tag=cob.block,tag=cob.ominous] as @e[tag=cob.mob_spawner] run function obs:trial_handler/spawn_mob/special/guard
execute as @e[tag=cob.mob_spawner] run function obs:trial_handler/spawn_mob/special/breeze_priority

execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 6..15 if predicate obs:chances/5 run function obs:trial_handler/spawn_mob/special/elite
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 16.. if predicate obs:chances/4 run function obs:trial_handler/spawn_mob/special/elite

execute as @e[tag=cob.mob_spawner] if predicate obs:chances/1 run function obs:trial_handler/spawn_mob/melee
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 2..4 if predicate obs:chances/2 run function obs:trial_handler/spawn_mob/ranged
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 5.. if predicate obs:chances/1 run function obs:trial_handler/spawn_mob/ranged

execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 3.. if predicate obs:chances/4 run function obs:trial_handler/spawn_mob/special/breeze_non_priority
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 10.. if predicate obs:chances/5 run function obs:trial_handler/spawn_mob/special/elite

execute as @e[tag=cob.mob_spawner] at @s run function obs:trial_handler/spawn_mob/mob_spawner