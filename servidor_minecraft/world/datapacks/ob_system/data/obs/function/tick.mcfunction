recipe give @a *
execute store result score #cob.time cob.block run time query daytime

execute as @a if score @s progress_setting matches 1.. run function obs:setting

execute as @e[tag=cob.block] at @s if block ~ 60 ~ minecraft:air run function obs:blocker

execute as @e[tag=cob.block,tag=cob.reward] at @s run function obs:trial_handler/reward_state/tick

advancement grant @a[scores={cob.netherrack=100..}] only obs:ob/nether_expansion
advancement grant @a[scores={cob.endstone=100}] only obs:ob/end_expansion

execute as @a at @s store result score @s cob.y run data get entity @s Pos[1]
advancement grant @a[scores={cob.y=..-64}] only obs:ob/void
advancement grant @a[scores={cob.y=1000}] only obs:ap/sky
advancement grant @a[scores={cob.y=320..}] only obs:ob/light
advancement grant @a[scores={cob.carrots_2=64..}] only obs:ob/vege
advancement grant @a[scores={cob.meaty=64..}] only obs:ob/meaty
advancement grant @a[scores={cob.sushi=64..}] only obs:ob/sushi
advancement grant @a[scores={cob.phantom=50..}] only obs:ap/phantom

advancement grant @a[scores={cob.kill_zompig=50..}] only obs:ob/zompig

execute as @e[tag=obs.portal_builder] at @s run function obs:end_portal_builder

execute as @e[type=#obs:process,tag=!obs.process] at @s run function obs:mob_handler

execute as @a at @s if dimension minecraft:overworld run function obs:snow

bossbar set minecraft:cob.trial players @a
execute if entity @e[tag=cob.block,tag=!cob.trial] run bossbar set minecraft:cob.trial visible false
execute if entity @e[tag=cob.block,tag=cob.trial] run bossbar set minecraft:cob.trial visible true

execute if entity @e[tag=cob.block,tag=!cob.trial] if entity @e[tag=cob.block,tag=!cob.reward] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{summon_trial:"true"}}}}] at @s in minecraft:overworld positioned ~ -70 ~ as @e[type=item,distance=..6,nbt={Item:{components:{"minecraft:custom_data":{summon_trial:"true"}}}}] run function obs:trial_handler/control/start_key

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{trial_mob:"elite"}}}}] at @s run function obs:trial_handler/kill_trial_elite
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{trial_mob:"guard"}}}}] at @s run function obs:trial_handler/kill_trial_guard
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{trial_mob:"basic"}}}}] at @s run function obs:trial_handler/kill_trial_mob

execute as @e[tag=cob.trial_mob,tag=!cob.trial_boss] at @s positioned ~ -70 ~ as @e[tag=cob.trial_mob,distance=..6] run function obs:trial_handler/kill_trial_mob
execute as @e[tag=cob.trial_boss] at @s positioned ~ -70 ~ as @e[tag=cob.trial_boss,distance=..6] run function obs:trial_handler/return_boss

execute if entity @e[tag=cob.block,tag=cob.boss] unless entity @e[tag=cob.trial_boss] run function obs:trial_handler/finish_trial

execute as @e[tag=cob.trial_boss] run function obs:trial_handler/boss_bar

execute as @a if score @s cob.death matches 1.. run function obs:player_death

execute if score @e[tag=cob.block,limit=1] cob.block matches 750.. if score #cob.time cob.block matches 1000 run function obs:visitor_calculation

execute as @e[type=minecraft:villager,tag=!ob.handled] if predicate obs:villager_level run function obs:villager_trade

execute as @a at @s if predicate obs:holding_totem if dimension minecraft:overworld if score @s cob.y matches ..-127 run function obs:totem_void
execute as @a at @s if predicate obs:holding_totem unless dimension minecraft:overworld if score @s cob.y matches ..-63 run function obs:totem_void

execute as @e[tag=ob.villager,nbt={Age:0}] run data modify entity @s Age set value 24000

gamemode survival @a[tag=!ob.joined]
tag @a[tag=!ob.joined] add ob.joined