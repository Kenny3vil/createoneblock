execute if entity @e[tag=cob.block,tag=!cob.ominous] run particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
execute if entity @e[tag=cob.block,tag=cob.ominous] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]

summon breeze ~ ~ ~ {Tags:["cob.trial_mob","cob.trial_mob.elite","cob.spawned"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],DeathLootTable:"obs:entity/trial_elite_breeze"}

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s[type=marker]