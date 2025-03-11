
scoreboard players set @e[tag=cob.block] cob.trial_timer 4

# Mob Cap
scoreboard players operation #cob.temp_1 cob.trial = #cob.trial.wave cob.trial
scoreboard players operation #cob.temp_1 cob.trial *= #cob.con.15 cob.block
scoreboard players operation #cob.temp_1 cob.trial /= #cob.con.10 cob.block

execute as @a run scoreboard players add #cob.temp_2 cob.trial 1

scoreboard players set @e[tag=cob.block] cob.mob_cap 4
scoreboard players operation @e[tag=cob.block] cob.mob_cap += #cob.temp_1 cob.trial

scoreboard players operation @e[tag=cob.block] cob.mob_cap /= #cob.con.3 cob.block
scoreboard players operation @e[tag=cob.block] cob.mob_cap *= #cob.con.2 cob.block

execute if score @e[tag=cob.block,limit=1] cob.mob_cap matches 12.. run scoreboard players set @e[tag=cob.block] cob.mob_cap 12

scoreboard players operation @e[tag=cob.block] cob.mob_cap += #cob.temp_2 cob.trial

scoreboard players operation @e[tag=cob.block] cob.mob_cap /= #cob.con.3 cob.block

execute if score @e[tag=cob.block,limit=1] cob.mob_cap matches 0..2 run scoreboard players set @e[tag=cob.block] cob.mob_cap 3

scoreboard players reset #cob.temp_1 cob.trial
scoreboard players reset #cob.temp_2 cob.trial

# Simultaneous mobs
scoreboard players operation #cob.temp_1 cob.trial = #cob.trial.wave cob.trial
scoreboard players operation #cob.temp_1 cob.trial /= #cob.con.3 cob.block

execute as @a run scoreboard players add #cob.temp_2 cob.trial 1
scoreboard players operation #cob.temp_2 cob.trial /= #cob.con.2 cob.block

scoreboard players set @e[tag=cob.block] cob.simultaneous_mobs 2
scoreboard players operation @e[tag=cob.block] cob.simultaneous_mobs += #cob.temp_1 cob.trial

scoreboard players operation @e[tag=cob.block] cob.simultaneous_mobs /= #cob.con.2 cob.block

execute if score @e[tag=cob.block,limit=1] cob.simultaneous_mobs matches 6.. run scoreboard players set @e[tag=cob.block] cob.simultaneous_mobs 6

scoreboard players operation @e[tag=cob.block] cob.simultaneous_mobs += #cob.temp_2 cob.trial

scoreboard players operation @e[tag=cob.block] cob.simultaneous_mobs /= #cob.con.3 cob.block

execute if score @e[tag=cob.block,limit=1] cob.simultaneous_mobs matches 0 run scoreboard players set @e[tag=cob.block] cob.simultaneous_mobs 1

scoreboard players reset #cob.temp_1 cob.trial
scoreboard players reset #cob.temp_2 cob.trial

execute as @a at @s run playsound minecraft:block.trial_spawner.detect_player master @s ~ ~ ~ 1000 1
data merge entity @e[tag=cob.trial.display,limit=1] {block_state:{Properties:{trial_spawner_state:"active"}}}
execute if entity @e[tag=cob.block,tag=cob.ominous] run data merge entity @e[tag=cob.trial.display,limit=1] {block_state:{Properties:{trial_spawner_state:"active",ominous:"true"}}}
execute at @e[tag=cob.block,limit=1,tag=cob.ominous] run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.25 0 0.25 0.01 25

execute positioned 0 62 0 run function obs:trial_handler/spawn_mob/boss/generic

execute store result bossbar minecraft:cob.trial max run data get entity @e[tag=cob.trial_boss,limit=1] Health

tag @e[tag=cob.block] add cob.boss