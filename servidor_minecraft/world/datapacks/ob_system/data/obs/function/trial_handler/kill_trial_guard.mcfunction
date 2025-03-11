advancement revoke @s only obs:technical/kill_trial_guard

execute if score @e[tag=cob.block,limit=1] cob.trial_cd matches 0 unless entity @e[tag=cob.trial_boss] run function obs:trial_handler/progress_trial
execute if score @e[tag=cob.block,limit=1] cob.trial_cd matches 0 unless entity @e[tag=cob.trial_boss] run function obs:trial_handler/progress_trial
