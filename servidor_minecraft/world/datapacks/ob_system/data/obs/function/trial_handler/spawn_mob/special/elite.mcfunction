
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 8.. if predicate obs:chances/5 run function obs:trial_handler/spawn_mob/special/elite/husk
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 8.. if predicate obs:chances/4 run function obs:trial_handler/spawn_mob/special/elite/bogged
execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 8.. if predicate obs:chances/3 run function obs:trial_handler/spawn_mob/special/elite/stray

execute as @e[tag=cob.mob_spawner] if score #cob.trial.wave cob.trial matches 6.. if predicate obs:chances/1 run function obs:trial_handler/spawn_mob/special/elite/skeleton
execute as @e[tag=cob.mob_spawner] run function obs:trial_handler/spawn_mob/special/elite/zombie