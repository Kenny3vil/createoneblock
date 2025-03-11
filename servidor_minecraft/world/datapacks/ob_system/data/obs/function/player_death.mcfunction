scoreboard players remove #cob.trial_life cob.trial 1

execute if entity @e[tag=cob.block,tag=cob.trial] if score @e[tag=cob.block,limit=1] cob.trial_cd matches 0 run bossbar set minecraft:cob.trial name [{"text":"Trial Progress | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_max"}},{"text":" / Lives : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]

execute if score #cob.trial_life cob.trial matches ..0 unless entity @e[tag=cob.reward] run function obs:trial_handler/control/stop

scoreboard players reset @s cob.death 