scoreboard players add @s cob.block 1

playsound minecraft:block.beacon.ambient master @a[distance=..16]

execute unless block ~ ~ ~ crying_obsidian run kill @s

execute unless block ~1 ~ ~ sculk run kill @s
execute unless block ~1 ~ ~1 sculk run kill @s
execute unless block ~ ~ ~1 sculk run kill @s
execute unless block ~-1 ~ ~1 sculk run kill @s
execute unless block ~-1 ~ ~ sculk run kill @s
execute unless block ~-1 ~ ~-1 sculk run kill @s
execute unless block ~ ~ ~-1 sculk run kill @s
execute unless block ~1 ~ ~-1 sculk run kill @s

execute unless block ~2 ~ ~ end_stone run kill @s
execute unless block ~2 ~ ~1 end_stone run kill @s
execute unless block ~2 ~ ~-1 end_stone run kill @s

execute unless block ~-2 ~ ~ end_stone run kill @s
execute unless block ~-2 ~ ~1 end_stone run kill @s
execute unless block ~-2 ~ ~-1 end_stone run kill @s

execute unless block ~ ~ ~2 end_stone run kill @s
execute unless block ~1 ~ ~2 end_stone run kill @s
execute unless block ~-1 ~ ~2 end_stone run kill @s

execute unless block ~ ~ ~-2 end_stone run kill @s
execute unless block ~1 ~ ~-2 end_stone run kill @s
execute unless block ~-1 ~ ~-2 end_stone run kill @s

execute if score @s cob.block matches 20.. run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 0 0.5 0.01 1
execute if score @s cob.block matches 100.. run particle minecraft:dragon_breath ~ ~0.5 ~ 1 0 1 0.05 1
execute if score @s cob.block matches 100.. run particle minecraft:dragon_breath ~ ~0.5 ~ 0.5 1 0.5 0.01 1 force

execute if score @s cob.block matches 140.. run playsound minecraft:item.trident.thunder master @a
execute if score @s cob.block matches 140.. run particle minecraft:dragon_breath ~ ~ ~ 1 0.5 1 0.5 200

execute if score @s cob.block matches 140.. run setblock ~ ~ ~ air

execute if score @s cob.block matches 140.. run setblock ~1 ~ ~ air
execute if score @s cob.block matches 140.. run setblock ~1 ~ ~1 air
execute if score @s cob.block matches 140.. run setblock ~ ~ ~1 air
execute if score @s cob.block matches 140.. run setblock ~-1 ~ ~1 air
execute if score @s cob.block matches 140.. run setblock ~-1 ~ ~ air
execute if score @s cob.block matches 140.. run setblock ~-1 ~ ~-1 air
execute if score @s cob.block matches 140.. run setblock ~ ~ ~-1 air
execute if score @s cob.block matches 140.. run setblock ~1 ~ ~-1 air

execute if score @s cob.block matches 140.. run setblock ~2 ~ ~ end_portal_frame[facing=west] replace
execute if score @s cob.block matches 140.. run setblock ~2 ~ ~1 end_portal_frame[facing=west] replace
execute if score @s cob.block matches 140.. run setblock ~2 ~ ~-1 end_portal_frame[facing=west] replace

execute if score @s cob.block matches 140.. run setblock ~ ~ ~2 end_portal_frame[facing=north] replace
execute if score @s cob.block matches 140.. run setblock ~1 ~ ~2 end_portal_frame[facing=north] replace
execute if score @s cob.block matches 140.. run setblock ~-1 ~ ~2 end_portal_frame[facing=north] replace

execute if score @s cob.block matches 140.. run setblock ~-2 ~ ~ end_portal_frame[facing=east] replace
execute if score @s cob.block matches 140.. run setblock ~-2 ~ ~1 end_portal_frame[facing=east] replace
execute if score @s cob.block matches 140.. run setblock ~-2 ~ ~-1 end_portal_frame[facing=east] replace

execute if score @s cob.block matches 140.. run setblock ~ ~ ~-2 end_portal_frame[facing=south] replace
execute if score @s cob.block matches 140.. run setblock ~1 ~ ~-2 end_portal_frame[facing=south] replace
execute if score @s cob.block matches 140.. run setblock ~-1 ~ ~-2 end_portal_frame[facing=south] replace

execute if score @s cob.block matches 140.. run advancement grant @a[distance=..32] only minecraft:story/follow_ender_eye
execute if score @s cob.block matches 140.. run stopsound @a master minecraft:block.beacon.ambient

execute if score @s cob.block matches 140.. run kill @s