execute if items entity @a container.* minecraft:camel_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon camel 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:mooshroom_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon mooshroom 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:sniffer_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon sniffer 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:panda_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon panda 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:skeleton_horse_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon skeleton_horse 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:armadillo_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon armadillo 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:parrot_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon parrot 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:turtle_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon turtle 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:allay_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon allay 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:frog_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon frog 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if items entity @a container.* minecraft:strider_spawn_egg[minecraft:custom_data={trial_reward:1b}] run summon strider 0 61 0 {Motion:[0.0,0.25,0.0]}

particle minecraft:poof 0 61 0 0.25 0.25 0.25 0.1 10
clear @a *[minecraft:custom_data={trial_reward:1b}]