summon pig ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.pig 1
execute if score @e[tag=cob.block,limit=1] cob.pig matches 1.. run function obs:crate/pig
