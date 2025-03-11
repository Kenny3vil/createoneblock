summon wolf ~ ~ ~ {variant:"spotted"}

scoreboard players remove @e[tag=cob.block] cob.wolf.8 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.8 matches 1.. run function obs:crate/wolf_8
