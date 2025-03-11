
execute unless block ~ ~ ~ minecraft:crying_obsidian positioned ^ ^ ^0.125 if entity @s[distance=..7] run function obs:end_portal_cast
execute if block ~ ~ ~ minecraft:crying_obsidian run function obs:end_portal_build