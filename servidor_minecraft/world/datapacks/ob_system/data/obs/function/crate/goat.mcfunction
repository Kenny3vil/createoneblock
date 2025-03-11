summon goat ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.goat 1
execute if score @e[tag=cob.block,limit=1] cob.goat matches 1.. run function obs:crate/goat
