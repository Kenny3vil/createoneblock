function obs:trial_handler/spawn_mob/boss/ability_rng

execute if score #cob.trial.wave cob.trial matches 2.. run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.trial.wave cob.trial matches 8.. run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.trial.wave cob.trial matches 16.. run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.trial.wave cob.trial matches 25.. run function obs:trial_handler/spawn_mob/boss/ability_rng

execute store result score #cob.temp_1 cob.block run random value 1..6

execute if score #cob.temp_1 cob.block matches 1 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/zombie
execute if score #cob.temp_1 cob.block matches 2 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/husk
execute if score #cob.temp_1 cob.block matches 3 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/drowned
execute if score #cob.temp_1 cob.block matches 4 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/skeleton
execute if score #cob.temp_1 cob.block matches 5 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/stray
execute if score #cob.temp_1 cob.block matches 6 positioned over world_surface run function obs:trial_handler/spawn_mob/boss/bogged

scoreboard players reset #cob.temp_1 cob.block