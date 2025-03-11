

bossbar set minecraft:cob.trial name [{"fallback":"Trial Progress","translate":"obs.bar.trial_progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_max"}}]

scoreboard players set #cob.trial.wave cob.trial 0

execute as @a at @s run playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 1000 1