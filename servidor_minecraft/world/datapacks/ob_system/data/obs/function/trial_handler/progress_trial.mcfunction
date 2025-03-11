scoreboard players add @e[tag=cob.block] cob.trial 1

execute store result bossbar minecraft:cob.trial value run scoreboard players get @e[tag=cob.block,limit=1] cob.trial

bossbar set minecraft:cob.trial name [{"text":"🗡 "},{"fallback":"Trial Progress","translate":"obs.bar.trial_progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_max"}},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

execute if score @e[tag=cob.block,limit=1] cob.trial >= @e[tag=cob.block,limit=1] cob.trial_max run function obs:trial_handler/wave_cooldown

execute if score #cob.trial.wave cob.trial > #cob.trial.wave_max cob.trial run function obs:trial_handler/finish_trial