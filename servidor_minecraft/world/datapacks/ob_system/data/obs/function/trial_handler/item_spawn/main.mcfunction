execute at @e[tag=cob.trial_mob,tag=!cob.trial_boss,limit=1,sort=random] run function obs:trial_handler/item_spawn/mob

execute if predicate obs:chances/1 at @r run function obs:trial_handler/item_spawn/player