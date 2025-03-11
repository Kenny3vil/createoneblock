

advancement revoke @s only obs:technical/kill_trial_mob

execute unless entity @s[type=!player,type=!item] if score @e[tag=cob.block,limit=1] cob.trial_cd matches 0 unless entity @e[tag=cob.trial_boss] run function obs:trial_handler/progress_trial

kill @s[type=item]
kill @s[tag=cob.trial_mob]