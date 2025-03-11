execute if entity @e[tag=cob.block,tag=!cob.ominous] run particle minecraft:flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
execute if entity @e[tag=cob.block,tag=cob.ominous] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.35 0.35 0.35 0.01 10
playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..16]

execute if predicate obs:chances/2 run summon slime ~ ~ ~ {Tags:["cob.trial_mob","cob.spawned"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Size:3}
execute unless entity @e[tag=cob.spawned] run summon slime ~ ~ ~ {Tags:["cob.trial_mob","cob.spawned"],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Size:1}

tag @e[tag=cob.trial_mob,tag=cob.spawned] remove cob.spawned

kill @s