summon llama ~ ~ ~ 

scoreboard players remove @e[tag=cob.block] cob.llama 1
execute if score @e[tag=cob.block,limit=1] cob.llama matches 1.. run function obs:crate/llama
