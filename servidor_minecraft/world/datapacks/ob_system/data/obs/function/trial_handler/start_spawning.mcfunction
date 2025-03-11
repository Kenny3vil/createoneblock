
function obs:trial_handler/mob_spawner

scoreboard players add #cob.temp_2 cob.trial 1

execute if score #cob.temp_2 cob.trial < @e[tag=cob.block,limit=1] cob.simultaneous_mobs if score #cob.temp_1 cob.trial < @e[tag=cob.block,limit=1] cob.mob_cap run function obs:trial_handler/start_spawning

scoreboard players reset @e[tag=cob.block] cob.trial_timer