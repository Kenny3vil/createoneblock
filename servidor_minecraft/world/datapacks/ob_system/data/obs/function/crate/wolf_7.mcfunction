summon wolf ~ ~ ~ {variant:"rusty"}

scoreboard players remove @e[tag=cob.block] cob.wolf.7 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.7 matches 1.. run function obs:crate/wolf_7
