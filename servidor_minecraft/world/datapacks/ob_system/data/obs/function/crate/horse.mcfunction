summon horse ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.horse 1
execute if score @e[tag=cob.block,limit=1] cob.horse matches 1.. run function obs:crate/horse
