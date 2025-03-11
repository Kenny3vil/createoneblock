advancement grant @a only obs:phases/trial_1

function obs:trial_handler/control/stop

tag @e[tag=cob.block] add cob.trial

execute if entity @a[predicate=obs:bad_omen] run function obs:trial_handler/control/bad_omen

execute as @e[tag=cob.block] at @s run setblock ~ ~ ~ barrier

execute as @e[tag=cob.block,tag=!cob.ominous] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0 50 0 0.01 100 force
execute as @e[tag=cob.block,tag=!cob.ominous] at @s run particle minecraft:trial_spawner_detection ~ ~25 ~ 0.0625 50 0.0625 0.01 900

execute as @e[tag=cob.block,tag=cob.ominous] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0 50 0 0.01 100 force
execute as @e[tag=cob.block,tag=cob.ominous] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~25 ~ 0.0625 50 0.0625 0.01 900

execute as @e[tag=cob.block,tag=!cob.ominous] at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["cob.trial.display"],block_state:{Name:"minecraft:trial_spawner",Properties:{trial_spawner_state:"inactive"}}}
execute as @e[tag=cob.block,tag=cob.ominous] at @s run summon block_display ~-0.5 ~ ~-0.5 {Tags:["cob.trial.display"],block_state:{Name:"minecraft:trial_spawner",Properties:{trial_spawner_state:"inactive",ominous:"true"}}}

execute as @a at @s run playsound minecraft:block.trial_spawner.charge_activate master @s 0 60 0 1000 0
execute as @a at @s run playsound minecraft:block.trial_spawner.spawn_mob master MCommand 0 60 0 1000 0.6
execute as @a at @s run playsound minecraft:block.beacon.power_select master MCommand 0 60 0 1000 0 

scoreboard players set #cob.trial.wave_max cob.trial 0

scoreboard players reset #cob.temp_1 cob.trial
scoreboard players reset #cob.temp_2 cob.trial

scoreboard players operation #cob.temp_1 cob.trial = @e[tag=cob.block,limit=1] cob.block
scoreboard players operation #cob.temp_1 cob.trial /= #cob.con.15 cob.block
scoreboard players operation #cob.temp_1 cob.trial /= #cob.con.100 cob.block

scoreboard players operation #cob.temp_2 cob.trial = #cob.day cob.block
scoreboard players operation #cob.temp_2 cob.trial /= #cob.con.25 cob.block

scoreboard players operation #cob.trial.wave_max cob.trial += #cob.temp_1 cob.trial
scoreboard players operation #cob.trial.wave_max cob.trial += #cob.temp_2 cob.trial

scoreboard players operation #cob.trial.wave_max cob.trial *= #cob.con.15 cob.block
scoreboard players operation #cob.trial.wave_max cob.trial /= #cob.con.10 cob.block

scoreboard players operation #cob.trial.wave_max cob.trial += #cob.con.2 cob.block
scoreboard players operation #cob.trial.wave_max cob.trial += #cob.trial.compl cob.trial
scoreboard players operation #cob.trial.wave_max cob.trial += #cob.trial.om_compl cob.trial

scoreboard players operation #cob.trial.wave_max cob.trial /= #cob.con.3 cob.block

execute if entity @e[tag=cob.block,tag=!cob.ominous] if score #cob.trial.wave_max cob.trial matches 10.. run scoreboard players set #cob.trial.wave_max cob.trial 10
execute if entity @e[tag=cob.block,tag=cob.ominous] if score #cob.trial.wave_max cob.trial matches 25.. run scoreboard players set #cob.trial.wave_max cob.trial 25

scoreboard players set #cob.trial_life cob.trial 5
execute as @a run scoreboard players add #cob.trial_life cob.trial 1
scoreboard players operation #cob.trial_life cob.trial /= #cob.con.2 cob.block

function obs:trial_handler/waves/wave_0
function obs:trial_handler/wave_cooldown

execute at @e[tag=ob.visitor] run particle minecraft:poof ~ ~1 ~ 0.25 0.5 0.25 0.01 10
execute run tp @e[tag=ob.visitor] ~ -100 ~