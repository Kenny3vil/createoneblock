
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 8.. if predicate obs:chances/4 run function obs:trial_handler/spawn_mob/ranged/bogged
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 6.. if predicate obs:chances/3 run function obs:trial_handler/spawn_mob/ranged/stray

execute as @e[tag=cob.mob_spawner] run function obs:trial_handler/spawn_mob/ranged/skeleton
