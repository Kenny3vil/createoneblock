scoreboard players add @e[tag=cob.block] cob.wolf.3 1
advancement revoke @a only obs:mobs/wolf_3
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace