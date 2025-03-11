scoreboard players enable @a progress_setting

scoreboard players add @e[tag=ob.trader] cob.block 1
execute as @e[scores={cob.block=1200..}] at @s run function obs:clear_trader

execute in minecraft:the_end unless entity @e[type=ender_dragon] run function obs:portal_handling

execute as @e[type=wandering_trader] run function obs:trader_silencer

bossbar set minecraft:cob.block players @a[scores={cob.display=1..}]
execute as @a unless score @s cob.setting matches 1 if score @s cob.display matches 1.. run scoreboard players remove @s cob.display 1

execute if entity @e[tag=cob.block,tag=cob.trial] if score @e[tag=cob.block,limit=1] cob.trial_cd matches 0 run function obs:trial_handler/spawning_timer

execute as @e[tag=cob.trial_boss] at @s run function obs:trial_handler/boss_handler
execute as @e[tag=cob.ability] at @s run function obs:trial_handler/ability_handler

execute if score @e[tag=cob.block,limit=1] cob.trial_cd matches 1.. run function obs:trial_handler/cooldown_down
execute if entity @e[tag=cob.block,tag=!cob.ominous] as @e[tag=cob.trial.display] at @s run particle minecraft:flame ~0.5 ~0.5 ~0.5 0.125 0.125 0.125 0.01 2
execute if entity @e[tag=cob.block,tag=cob.ominous] as @e[tag=cob.trial.display] at @s run particle minecraft:soul_fire_flame ~0.5 ~0.5 ~0.5 0.125 0.125 0.125 0.01 2

scoreboard players add @e[tag=cob.block,limit=1] cob.trader 1
execute as @e[tag=cob.block,limit=1] if score @e[tag=cob.block,limit=1] cob.trader matches 2880.. if predicate obs:chances/9 if predicate obs:chances/4 run function obs:random_spawn

execute as @e[tag=ob.shulker.spawn] at @s unless entity @e[type=minecraft:ender_dragon] unless entity @e[type=minecraft:shulker,distance=..12] if predicate obs:chances/shulker if predicate obs:chances/1 run function obs:shulkers
execute unless entity @e[type=minecraft:ender_dragon] run function obs:shulker_spawner/scan

schedule function obs:second 1s