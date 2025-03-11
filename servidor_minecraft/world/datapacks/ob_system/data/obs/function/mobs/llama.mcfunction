scoreboard players add @e[tag=cob.block] cob.llama 1
advancement revoke @a only obs:mobs/llama
clear @a #obs:spawn_eggs
schedule function obs:mobs/destroy_egg 1t replace