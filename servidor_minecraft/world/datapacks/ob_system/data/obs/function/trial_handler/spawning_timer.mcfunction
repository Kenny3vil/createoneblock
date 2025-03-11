scoreboard players add @e[tag=cob.block] cob.trial_timer 1
execute if score @e[tag=cob.block,limit=1] cob.trial_timer matches 3.. run function obs:trial_handler/spawn_mobs