scoreboard players remove @e[tag=cob.block] cob.trial_cd 1

execute store result bossbar minecraft:cob.trial value run scoreboard players get @e[tag=cob.block,limit=1] cob.trial_cd

bossbar set minecraft:cob.trial name [{"text":"🍖 "},{"fallback":"Wave %s In","translate":"obs.bar.trial_cooldown_wave","with":[{"score":{"name":"#cob.trial.wave","objective":"cob.trial"}}]},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_cd"}},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

execute if score #cob.trial.wave cob.trial >= #cob.trial.wave_max cob.trial run bossbar set minecraft:cob.trial name [{"text":"🍖 "},{"fallback":"The Last Wave In","translate":"obs.bar.trial_cooldown_last_wave"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_cd"}},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

execute if entity @e[tag=cob.block,limit=1,tag=cob.trial] as @a at @s run playsound minecraft:block.vault.insert_item_fail block @s ~ ~ ~ 0.125 2
execute if score @e[tag=cob.block,limit=1,tag=cob.trial] cob.trial_cd matches 1 as @a at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item block @s ~ ~ ~ 0.25 1.25

execute as @e[tag=cob.trial_mob] run damage @s 10 minecraft:player_attack

execute if score @e[tag=cob.block,limit=1,tag=cob.trial] cob.trial_cd matches 0 run function obs:trial_handler/waves/wave_progress

execute if score @e[tag=cob.block,limit=1,tag=cob.trial,tag=cob.ominous] cob.trial_cd matches 0 if score #cob.trial.wave cob.trial >= #cob.trial.wave_max cob.trial run function obs:trial_handler/waves/boss_wave