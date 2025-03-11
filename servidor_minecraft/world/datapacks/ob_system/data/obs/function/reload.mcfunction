kill @e[tag=cob.block]
worldborder set 1500
setblock 0 60 0 minecraft:grass_block
tp @a 0 61 0
summon marker 0 60 0 {Tags:["cob.block"]}

scoreboard players set @e[tag=cob.block,limit=1] cob.block_max 30
execute store result bossbar minecraft:cob.block max run scoreboard players get @e[tag=cob.block,limit=1] cob.block_max

scoreboard players set #cob.trial.compl cob.trial 0