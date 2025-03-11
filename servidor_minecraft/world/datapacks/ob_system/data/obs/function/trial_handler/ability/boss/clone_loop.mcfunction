
execute if entity @e[type=zombie,tag=cob.trial_boss] run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.melee","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:30f,Attributes:[{Name:generic.knockback_resistance,Base:0.75},{Name:generic.max_health,Base:30},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

execute if entity @e[type=husk,tag=cob.trial_boss] run summon husk ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.melee","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:30f,Attributes:[{Name:generic.knockback_resistance,Base:0.75},{Name:generic.max_health,Base:30},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

execute if entity @e[type=drowned,tag=cob.trial_boss] run summon drowned ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:70f,Attributes:[{Name:generic.knockback_resistance,Base:0.75},{Name:generic.max_health,Base:120},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

execute if entity @e[type=skeleton,tag=cob.trial_boss] run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:70f,Attributes:[{Name:generic.max_health,Base:120},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

execute if entity @e[type=stray,tag=cob.trial_boss] run summon stray ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:70f,Attributes:[{Name:generic.max_health,Base:120},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

execute if entity @e[type=bogged,tag=cob.trial_boss] run summon bogged ~ ~ ~ {PersistenceRequired:1b,Tags:["cob.trial_mob","cob.spawned","cob.trial_clone"],active_effects:[{id:"minecraft:trial_omen",amplifier:1,duration:-1,show_particles:1b,ambient:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],HandDropChances:[-327.670F,-327.670F],Health:70f,Attributes:[{Name:generic.max_health,Base:120},{Name:generic.scale,Base:1.025}],DeathLootTable:"obs:entity/trial_mob"}

attribute @e[tag=cob.spawned,tag=cob.melee,limit=1] minecraft:generic.movement_speed modifier add obs:boss_speed 0.3 add_multiplied_base
attribute @e[tag=cob.spawned,tag=cob.melee,limit=1] minecraft:generic.explosion_knockback_resistance base set 0.35
attribute @e[tag=cob.spawned,limit=1] minecraft:generic.fall_damage_multiplier base set 0

execute as @e[tag=cob.spawned,type=zombie] run function obs:trial_handler/spawn_mob/armor/bosses/zombie
execute as @e[tag=cob.spawned,type=husk] run function obs:trial_handler/spawn_mob/armor/bosses/husk
execute as @e[tag=cob.spawned,type=drowned] run function obs:trial_handler/spawn_mob/armor/bosses/drowned
execute as @e[tag=cob.spawned,type=skeleton] run function obs:trial_handler/spawn_mob/armor/bosses/skeleton
execute as @e[tag=cob.spawned,type=stray] run function obs:trial_handler/spawn_mob/armor/bosses/stray
execute as @e[tag=cob.spawned,type=bogged] run function obs:trial_handler/spawn_mob/armor/bosses/bogged

execute store result score #cob.clone cob.trial if entity @e[tag=cob.trial_clone]

execute if score #cob.clone cob.trial matches ..1 run function obs:trial_handler/ability/boss/clone_loop