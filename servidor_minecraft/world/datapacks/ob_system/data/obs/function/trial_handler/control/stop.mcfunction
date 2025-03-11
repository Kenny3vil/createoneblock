execute as @e[tag=cob.block] at @s if block ~ ~ ~ vault run setblock ~ ~ ~ dirt
execute as @e[tag=cob.block] at @s if block ~ ~ ~ air run setblock ~ ~ ~ dirt
execute as @e[tag=cob.block] at @s if block ~ ~ ~ barrier run setblock ~ ~ ~ dirt
kill @e[tag=cob.trial.display]
tag @e[tag=cob.block] remove cob.trial
tag @e[tag=cob.block] remove cob.ominous
tag @e[tag=cob.block] remove cob.boss
tag @e[tag=cob.block] remove cob.reward
effect clear @a trial_omen

kill @e[tag=cob.ability_trigger]
kill @e[tag=cob.trial_mob]