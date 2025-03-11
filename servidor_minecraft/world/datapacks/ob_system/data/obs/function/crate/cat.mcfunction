summon cat ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.cat 1
execute if score @e[tag=cob.block,limit=1] cob.cat matches 1.. run function obs:crate/cat
