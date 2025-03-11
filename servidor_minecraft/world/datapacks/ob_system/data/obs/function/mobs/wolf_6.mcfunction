scoreboard players add @e[tag=cob.block] cob.wolf.6 1
advancement revoke @a only obs:mobs/wolf_6
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace