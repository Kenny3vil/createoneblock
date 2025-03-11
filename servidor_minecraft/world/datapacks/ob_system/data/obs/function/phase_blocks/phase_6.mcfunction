
tag @s add cob.placed

execute if block 0 60 0 air if predicate obs:chances/3 unless score @s cob.phase matches 7.. run setblock 0 60 0 copper_ore
execute if block 0 60 0 air if predicate obs:chances/3 if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_copper_ore
execute if block 0 60 0 air if predicate obs:chances/2 unless score @s cob.phase matches 7.. run setblock 0 60 0 lapis_ore
execute if block 0 60 0 air if predicate obs:chances/2 if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_lapis_ore
execute if block 0 60 0 air if predicate obs:chances/1 unless score @s cob.phase matches 7.. run setblock 0 60 0 gold_ore
execute if block 0 60 0 air if predicate obs:chances/1 if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_gold_ore
execute if block 0 60 0 air unless score @s cob.phase matches 7.. run setblock 0 60 0 redstone_ore
execute if block 0 60 0 air if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_redstone_ore