advancement revoke @s only obs:technical/mace_guard

execute at @e[tag=cob.trial_mob.guard,limit=1,sort=nearest] run summon breeze_wind_charge ^ ^0.5 ^0.5 {Owner:[I;0,0,0,0],Motion:[0.0,-10.0,0.0],Tags:["cob.spawned"]}
data modify entity @e[type=minecraft:breeze_wind_charge,limit=1,tag=cob.spawned] Owner set from entity @e[type=zombie,tag=cob.trial_mob.guard,limit=1] UUID

tag @e[tag=cob.spawned,type=minecraft:breeze_wind_charge] remove cob.spawned

execute as @e[tag=cob.trial_mob.guard,type=minecraft:zombie] at @s if items entity @s weapon.mainhand minecraft:mace if score @s cob.trial_timer matches 20.. run scoreboard players reset @s cob.trial_timer