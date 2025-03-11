
tag @s add cob.placed

execute if block 0 60 0 air if predicate obs:chances/3 run setblock 0 60 0 blackstone
execute if block 0 60 0 air if predicate obs:chances/2 run setblock 0 60 0 obsidian
execute if block 0 60 0 air if predicate obs:chances/1 run setblock 0 60 0 sculk
execute if block 0 60 0 air run setblock 0 60 0 amethyst_block