particle minecraft:gust_emitter_small ~ ~1 ~
playsound minecraft:item.trident.riptide_2 hostile @a[distance=..16]

scoreboard players set @s cob.trial_timer 0

scoreboard objectives add cob.vec dummy

execute store result score #temp.x cob.vec run data get entity @s Pos[0] 10000
execute store result score #temp.y cob.vec run data get entity @s Pos[1] 10000
execute store result score #temp.z cob.vec run data get entity @s Pos[2] 10000

execute facing entity @p feet run tp @s ^ ^0.0007953125 ^0.0078125

execute store result score #temp.dx cob.vec run data get entity @s Pos[0] 10000
execute store result score #temp.dy cob.vec run data get entity @s Pos[1] 10000
execute store result score #temp.dz cob.vec run data get entity @s Pos[2] 10000

scoreboard players operation #temp.dx cob.vec -= #temp.x cob.vec
scoreboard players operation #temp.dy cob.vec -= #temp.y cob.vec
scoreboard players operation #temp.dz cob.vec -= #temp.z cob.vec

execute store result entity @s Motion[0] double 0.03125 run scoreboard players get #temp.dx cob.vec
execute store result entity @s Motion[1] double 0.03125 run scoreboard players get #temp.dy cob.vec
execute store result entity @s Motion[2] double 0.03125 run scoreboard players get #temp.dz cob.vec

scoreboard objectives remove cob.vec
