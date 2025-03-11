particle minecraft:soul_fire_flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
particle minecraft:trial_omen ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]
playsound minecraft:block.trial_spawner.ominous_activate hostile @a[distance=..16]

summon zombie ~ ~ ~ {Tags:["cob.trial_mob","cob.trial_mob.guard","cob.spawned"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:20f,Attributes:[{Name:generic.knockback_resistance,Base:0.6},{Name:generic.max_health,Base:20},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_guard"}

execute as @e[tag=cob.spawned] run function obs:trial_handler/spawn_mob/armor/guard_melee

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s[type=marker]