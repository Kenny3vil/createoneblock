execute if entity @e[tag=cob.block,tag=!cob.ominous] run particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
execute if entity @e[tag=cob.block,tag=cob.ominous] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]

summon skeleton ~ ~ ~ {Tags:["cob.trial_mob","cob.trial_mob.elite","cob.spawned"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:25f,Attributes:[{Name:generic.max_health,Base:25},{Name:generic.scale,Base:1.01}],DeathLootTable:"obs:entity/trial_elite"}

execute as @e[tag=cob.spawned] run function obs:trial_handler/spawn_mob/armor/elite_ranged

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s[type=marker]