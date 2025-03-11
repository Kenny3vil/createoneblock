
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 8.. if predicate obs:chances/4 run function obs:trial_handler/spawn_mob/melee/slime
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 4.. if predicate obs:chances/3 run function obs:trial_handler/spawn_mob/melee/husk

execute as @e[tag=cob.mob_spawner] run function obs:trial_handler/spawn_mob/melee/zombie
