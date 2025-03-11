scoreboard players add @e[tag=cob.block] cob.cat 1
advancement revoke @a only obs:mobs/cat
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace