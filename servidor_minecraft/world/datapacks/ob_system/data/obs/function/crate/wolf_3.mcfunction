summon wolf ~ ~ ~ {variant:"woods"}

scoreboard players remove @e[tag=cob.block] cob.wolf.3 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.3 matches 1.. run function obs:crate/wolf_3
