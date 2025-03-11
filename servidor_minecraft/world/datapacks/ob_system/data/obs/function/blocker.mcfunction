
execute positioned ~ 60 ~ as @e[type=item,dy=0] at @s run tp @s ~ ~1 ~

execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 9.. if predicate obs:phases/phase_9 run function obs:phase_blocks/phase_9
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 8.. if predicate obs:phases/phase_8 run function obs:phase_blocks/phase_8
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 7.. if predicate obs:phases/phase_7 run function obs:phase_blocks/phase_7
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 6.. if predicate obs:phases/phase_6 run function obs:phase_blocks/phase_6
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 5.. if predicate obs:phases/phase_5 run function obs:phase_blocks/phase_5
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 4.. if predicate obs:phases/phase_4 run function obs:phase_blocks/phase_4
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 3.. if predicate obs:phases/phase_3 run function obs:phase_blocks/phase_3
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 2.. if predicate obs:phases/phase_2 run function obs:phase_blocks/phase_2
execute unless entity @s[tag=cob.placed] if score @s cob.phase matches 1.. if predicate obs:phases/phase_1 run function obs:phase_blocks/phase_1
execute unless entity @s[tag=cob.placed] run setblock ~ 60 ~ grass_block

tag @s remove cob.placed

scoreboard players add @s cob.block 1
execute if score @s cob.block matches 0.. run advancement grant @a only obs:phases/root
execute if score @s cob.block matches 30 run function obs:stages/phase_1
execute if score @s cob.block matches 30.. run advancement grant @a only obs:phases/phase_1
execute if score @s cob.block matches 150 run function obs:stages/phase_2
execute if score @s cob.block matches 150.. run advancement grant @a only obs:phases/phase_2
execute if score @s cob.block matches 300 run function obs:stages/phase_3
execute if score @s cob.block matches 300.. run advancement grant @a only obs:phases/phase_3
execute if score @s cob.block matches 750 run function obs:stages/phase_4
execute if score @s cob.block matches 750.. run advancement grant @a only obs:phases/phase_4
execute if score @s cob.block matches 1500 run function obs:stages/phase_5
execute if score @s cob.block matches 1500.. run advancement grant @a only obs:phases/phase_5
execute if score @s cob.block matches 2000 run function obs:stages/phase_6
execute if score @s cob.block matches 2000 run recipe take @a obs:trial_callers_key
execute if score @s cob.block matches 2000.. run advancement grant @a only obs:phases/phase_6
execute if score @s cob.block matches 2500 run function obs:stages/phase_7
execute if score @s cob.block matches 2500.. run advancement grant @a only obs:phases/phase_7
execute if score @s cob.block matches 3500 run function obs:stages/phase_8
execute if score @s cob.block matches 3500.. run advancement grant @a only obs:phases/phase_8
execute if score @s cob.block matches 5000 run function obs:stages/phase_9
execute if score @s cob.block matches 5000.. run advancement grant @a only obs:phases/phase_9
execute if score @s cob.block matches 5000.. run advancement grant @a only obs:ap/root

execute if score @s cob.block matches 100000.. run advancement grant @a only obs:phases/progress_1
execute if score @s cob.block matches 1000000.. run advancement grant @a only obs:phases/progress_2
execute if score @s cob.block matches 10000000.. run advancement grant @a only obs:phases/progress_3
execute if score @s cob.block matches 100000000.. run advancement grant @a only obs:phases/progress_4
execute if score @s cob.block matches 1000000000.. run advancement grant @a only obs:phases/progress_5

scoreboard players add @s cob.trader 20
execute if score @s cob.trader matches 2880.. if predicate obs:chances/4 run function obs:random_trader

execute as @a[distance=..7] unless score @s cob.setting matches 2 run scoreboard players set @s cob.display 6

execute if score @e[tag=cob.block,limit=1] cob.block matches ..5000 run bossbar set minecraft:cob.block name [{"text":"🪓 "},{"fallback":"Progress","translate":"obs.bar.progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.block"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.block_max"}}]
execute if score @e[tag=cob.block,limit=1] cob.block matches 5000.. run bossbar set minecraft:cob.block name [{"text":"🪓 "},{"fallback":"Progress","translate":"obs.bar.progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.block"}}]
execute store result bossbar minecraft:cob.block value run scoreboard players get @e[tag=cob.block,limit=1] cob.block
bossbar set minecraft:cob.block players @a[scores={cob.display=1..}]

function obs:trial_handler/control/stop