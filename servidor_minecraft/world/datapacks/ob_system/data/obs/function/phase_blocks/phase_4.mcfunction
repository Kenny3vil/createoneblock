
tag @s add cob.placed

execute if block 0 60 0 air if predicate obs:chances/2 run setblock 0 60 0 dripstone_block
execute if block 0 60 0 air if predicate obs:chances/1 unless score @s cob.phase matches 7.. run setblock 0 60 0 coal_ore
execute if block 0 60 0 air if predicate obs:chances/1 if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_coal_ore
execute if block 0 60 0 air unless score @s cob.phase matches 7.. run setblock 0 60 0 iron_ore
execute if block 0 60 0 air if score @s cob.phase matches 7.. run setblock 0 60 0 deepslate_iron_ore