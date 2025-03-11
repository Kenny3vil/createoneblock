summon wolf ~ ~ ~ {variant:"pale"}

scoreboard players remove @e[tag=cob.block] cob.wolf.1 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.1 matches 1.. run function obs:crate/wolf_1
