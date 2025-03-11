
execute as @a at @e[tag=cob.block,tag=cob.ominous] run loot spawn ~ ~1 ~ loot obs:gameplay/trial/finish_ominous
execute as @a at @e[tag=cob.block] run loot spawn ~ ~1 ~ loot obs:gameplay/trial/finish

execute if entity @e[tag=cob.ominous] run advancement grant @a only obs:ap/success

function obs:trial_handler/control/stop

kill @e[tag=cob.trial_mob]

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s

execute as @e[tag=cob.block] at @s run function obs:trial_handler/control/reward

weather clear

scoreboard players add #cob.trial.compl cob.trial 1
execute if entity @e[tag=cob.ominous] run scoreboard players add #cob.trial.om_compl cob.trial 4

advancement grant @a only obs:phases/trial_2
execute if score #cob.trial.compl cob.trial matches 5.. run advancement grant @a only obs:phases/trial_3
execute if score #cob.trial.compl cob.trial matches 10.. run advancement grant @a only obs:phases/trial_4
execute if score #cob.trial.compl cob.trial matches 50.. run advancement grant @a only obs:phases/trial_5
execute if score #cob.trial.compl cob.trial matches 100.. run advancement grant @a only obs:phases/trial_6