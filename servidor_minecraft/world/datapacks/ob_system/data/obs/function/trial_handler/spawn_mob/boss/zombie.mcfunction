
particle minecraft:trial_spawner_detection ~ ~1 ~ 0.125 0.5 0.125 0.01 10
particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
particle minecraft:raid_omen ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]
playsound minecraft:block.trial_spawner.ominous_activate hostile @a[distance=..16]
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 100 1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 100 0
playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 100 0

summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.trial_boss","cob.trial_boss.zombie","cob.spawned"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:70f,attributes:[{id:knockback_resistance,base:0.75},{id:max_health,base:120},{id:scale,base:1.025}],DeathLootTable:"obs:entity/trial_boss"}

attribute @e[tag=cob.spawned,limit=1] minecraft:movement_speed modifier add obs:boss_speed 0.3 add_multiplied_base
attribute @e[tag=cob.spawned,limit=1] minecraft:explosion_knockback_resistance base set 0.35
attribute @e[tag=cob.spawned,limit=1] minecraft:fall_damage_multiplier base set 0

execute store result score #cob.temp_1 cob.block run data get entity @e[tag=cob.spawned,limit=1] Health
scoreboard players operation #cob.temp_2 cob.block = #cob.trial.wave cob.trial
scoreboard players operation #cob.temp_1 cob.block += #cob.temp_2 cob.block
execute store result entity @e[tag=cob.spawned,limit=1] Health float 1 run scoreboard players get #cob.temp_1 cob.block

execute as @e[tag=cob.spawned] run function obs:trial_handler/spawn_mob/armor/bosses/zombie
execute as @e[tag=cob.spawned] run effect give @s minecraft:glowing 1 1

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s[type=marker]