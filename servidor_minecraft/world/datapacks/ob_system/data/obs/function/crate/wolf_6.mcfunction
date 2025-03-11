summon wolf ~ ~ ~ {variant:"chestnut"}

scoreboard players remove @e[tag=cob.block] cob.wolf.6 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.6 matches 1.. run function obs:crate/wolf_6
