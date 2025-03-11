scoreboard players add @e[tag=cob.block] cob.sheep 1
advancement revoke @a only obs:mobs/sheep
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace