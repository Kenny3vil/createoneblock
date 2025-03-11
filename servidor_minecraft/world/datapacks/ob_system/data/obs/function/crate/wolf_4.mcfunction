summon wolf ~ ~ ~ {variant:"black"}

scoreboard players remove @e[tag=cob.block] cob.wolf.4 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.4 matches 1.. run function obs:crate/wolf_4
