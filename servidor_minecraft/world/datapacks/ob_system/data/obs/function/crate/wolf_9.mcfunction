summon wolf ~ ~ ~ {variant:"striped"}

scoreboard players remove @e[tag=cob.block] cob.wolf.9 1
execute if score @e[tag=cob.block,limit=1] cob.wolf.9 matches 1.. run function obs:crate/wolf_9
