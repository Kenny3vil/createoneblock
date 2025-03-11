
weather clear

tag @e[tag=cob.block] remove cob.reward

scoreboard players reset #cob.reward.timer cob.trial

execute if block 0 60 0 vault run execute as @a at @s run playsound minecraft:block.trial_spawner.charge_activate master @s 0 60 0 1000 0
execute if block 0 60 0 vault run execute as @a at @s run playsound minecraft:block.vault.deactivate master MCommand 0 60 0 1000 0.6
execute if block 0 60 0 vault as @e[tag=cob.block] at @s run setblock ~ ~ ~ dirt