summon chicken ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.chicken 1
execute if score @e[tag=cob.block,limit=1] cob.chicken matches 1.. run function obs:crate/chicken
