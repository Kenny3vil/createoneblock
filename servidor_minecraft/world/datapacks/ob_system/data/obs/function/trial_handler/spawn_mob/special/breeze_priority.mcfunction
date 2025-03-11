scoreboard players set #cob.trial.breeze cob.trial 0
execute as @e[tag=cob.trial_mob,type=breeze] run scoreboard players add #cob.trial.breeze cob.trial 1

execute as @e[tag=cob.mob_spawner] unless score #cob.trial.breeze cob.trial matches 1.. if score #cob.trial.wave cob.trial matches 6.. run function obs:trial_handler/spawn_mob/special/breeze
