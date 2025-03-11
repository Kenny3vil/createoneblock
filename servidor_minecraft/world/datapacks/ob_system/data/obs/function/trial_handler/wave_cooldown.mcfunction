bossbar set minecraft:cob.trial color yellow
scoreboard players set @e[tag=cob.block] cob.trial_cd 16
bossbar set minecraft:cob.trial value 15
bossbar set minecraft:cob.trial max 15
scoreboard players add #cob.trial.wave cob.trial 1

bossbar set minecraft:cob.trial name [{"text":"🍖 "},{"fallback":"Wave %s In","translate":"obs.bar.trial_cooldown_wave","with":[{"score":{"name":"#cob.trial.wave","objective":"cob.trial"}}]},{"text":" | "},{"text":"15"},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

execute if score #cob.trial.wave cob.trial >= #cob.trial.wave_max cob.trial run bossbar set minecraft:cob.trial name [{"text":"🍖 "},{"fallback":"The Last Wave In","translate":"obs.bar.trial_cooldown_last_wave"},{"text":" | "},{"text":"15"},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

data merge entity @e[tag=cob.trial.display,limit=1] {block_state:{Properties:{trial_spawner_state:"inactive"}}}
execute if entity @e[tag=cob.block,tag=cob.ominous] run data merge entity @e[tag=cob.trial.display,limit=1] {block_state:{Properties:{trial_spawner_state:"inactive",ominous:"true"}}}

execute at @e[tag=cob.block,tag=!cob.ominous] if score #cob.trial.wave cob.trial matches 2.. run loot spawn ~ ~1 ~ loot obs:gameplay/trial/checkpoint
execute at @e[tag=cob.block,tag=cob.ominous] if score #cob.trial.wave cob.trial matches 2.. run loot spawn ~ ~1 ~ loot obs:gameplay/trial/checkpoint_ominous