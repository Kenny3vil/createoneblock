summon donkey ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.donkey 1
execute if score @e[tag=cob.block,limit=1] cob.donkey matches 1.. run function obs:crate/donkey
