function obs:trial_handler/ability/boss/spawn_web
execute at @e[tag=cob.trial_mob,limit=1,sort=random] run function obs:trial_handler/ability/boss/spawn_web

execute if score #cob.trial.wave cob.trial matches 10.. at @e[tag=cob.trial_mob,limit=1,sort=random] run function obs:trial_handler/ability/boss/spawn_web

execute if score #cob.trial.wave cob.trial matches 20.. at @e[tag=cob.trial_mob,limit=1,sort=random] run function obs:trial_handler/ability/boss/spawn_web