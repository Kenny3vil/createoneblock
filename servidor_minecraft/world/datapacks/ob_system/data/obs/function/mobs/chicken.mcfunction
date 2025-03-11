scoreboard players add @e[tag=cob.block] cob.chicken 1
advancement revoke @a only obs:mobs/chicken
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace