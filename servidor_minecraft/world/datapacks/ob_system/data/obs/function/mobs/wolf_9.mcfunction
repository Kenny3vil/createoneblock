scoreboard players add @e[tag=cob.block] cob.wolf.9 1
advancement revoke @a only obs:mobs/wolf_9
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace