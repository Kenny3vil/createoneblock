
execute if entity @s[nbt={Item:{id:"minecraft:camel_spawn_egg",count:1}}] run summon camel 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:mooshroom_spawn_egg",count:1}}] run summon mooshroom 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:sniffer_spawn_egg",count:1}}] run summon sniffer 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:panda_spawn_egg",count:1}}] run summon panda 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:skeleton_horse_spawn_egg",count:1}}] run summon skeleton_horse 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:armadillo_spawn_egg",count:1}}] run summon armadillo 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:parrot_spawn_egg",count:1}}] run summon parrot 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:turtle_spawn_egg",count:1}}] run summon turtle 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:allay_spawn_egg",count:1}}] run summon allay 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:frog_spawn_egg",count:1}}] run summon frog 0 61 0 {Motion:[0.0,0.25,0.0]}
execute if entity @s[nbt={Item:{id:"minecraft:strider_spawn_egg",count:1}}] run summon strider 0 61 0 {Motion:[0.0,0.25,0.0]}

particle minecraft:poof 0 61 0 0.25 0.25 0.25 0.1 10
kill @s