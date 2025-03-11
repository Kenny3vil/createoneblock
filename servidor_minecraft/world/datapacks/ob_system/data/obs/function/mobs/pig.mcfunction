scoreboard players add @e[tag=cob.block] cob.pig 1
advancement revoke @a only obs:mobs/pig
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace