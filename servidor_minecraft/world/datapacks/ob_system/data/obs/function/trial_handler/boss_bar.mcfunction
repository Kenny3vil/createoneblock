execute store result bossbar minecraft:cob.trial value run data get entity @e[tag=cob.trial_boss,limit=1] Health

bossbar set minecraft:cob.trial name [{"text":"☠ "},{"fallback":"Defeat the Trial Keeper","translate":"obs.bar.trial_boss"},{"text":" / "},{"fallback":"Lives","translate":"obs.bar.trial_lives"},{"text":" : "},{"score":{"name":"#cob.trial_life","objective":"cob.trial"}}]