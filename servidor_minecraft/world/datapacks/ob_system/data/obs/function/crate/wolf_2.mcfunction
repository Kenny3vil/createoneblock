summon wolf ~ ~ ~ {variant:"snowy"}

scoreboard players remove @e[tag=cob.block] cob.wolf.2 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.2 matches 1.. run function obs:crate/wolf_2
