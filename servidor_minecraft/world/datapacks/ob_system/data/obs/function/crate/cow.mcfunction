summon cow ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.cow 1
execute if score @e[tag=cob.block,limit=1] cob.cow matches 1.. run function obs:crate/cow
