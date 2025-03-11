execute as @e[tag=ob.visit_dealer] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
ride @e[tag=ob.visit_dealer,limit=1] dismount
execute as @e[tag=ob.visit_dealer] at @s run data modify entity @s SleepingZ set value 0
tp @e[tag=ob.visit_dealer] 0 -1000 0

summon marker ~ ~ ~ {Tags:["ob.trader_spawn"]}
spreadplayers ~ ~ 50 100 false @e[tag=ob.trader_spawn]

execute as @e[tag=ob.trader_spawn] at @s run function obs:spawn_check

execute at @e[tag=ob.trader_spawn] run summon villager ~ ~ ~ {Tags:["ob.villager","ob.visit_dealer"],CustomName:'[{"fallback":"Mysterious Trader","translate":"obs.entity.mysterious_trader","color":"dark_green"},{"color":"dark_green","italic":false,"text":" 🧪"}]',VillagerData:{profession:"minecraft:nitwit",type:"minecraft:swamp"},Offers:{Recipes:[]}}

execute at @e[tag=ob.trader_spawn] run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;65280],fade_colors:[I;16777215]},{shape:"small_ball",colors:[I;65280],fade_colors:[I;16777215]},{shape:"small_ball",colors:[I;16777215]}]}}}}

execute at @e[tag=ob.trader_spawn] run summon firework_rocket ~ ~ ~ {LifeTime:40,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;65280],fade_colors:[I;16777215]},{shape:"small_ball",colors:[I;65280],fade_colors:[I;16777215]},{shape:"small_ball",colors:[I;16777215]}]}}}}

execute at @e[tag=ob.trader_spawn] run playsound minecraft:entity.wandering_trader.reappeared master @a

scoreboard players set @s cob.trader 0

execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.chicken matches 1.. run function obs:crate/chicken
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.pig matches 1.. run function obs:crate/pig
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.cow matches 1.. run function obs:crate/cow
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.llama matches 1.. run function obs:crate/llama
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.goat matches 1.. run function obs:crate/goat
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.sheep matches 1.. run function obs:crate/sheep
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.cat matches 1.. run function obs:crate/cat
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.horse matches 1.. run function obs:crate/horse
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.donkey matches 1.. run function obs:crate/donkey
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.fox matches 1.. run function obs:crate/fox

execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.1 matches 1.. run function obs:crate/wolf_1
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.2 matches 1.. run function obs:crate/wolf_2
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.3 matches 1.. run function obs:crate/wolf_3
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.4 matches 1.. run function obs:crate/wolf_4
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.5 matches 1.. run function obs:crate/wolf_5
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.6 matches 1.. run function obs:crate/wolf_6
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.7 matches 1.. run function obs:crate/wolf_7
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.8 matches 1.. run function obs:crate/wolf_8
execute at @e[tag=ob.trader_spawn] if score @e[tag=cob.block,limit=1] cob.wolf.9 matches 1.. run function obs:crate/wolf_9

kill @e[tag=ob.trader_spawn]

execute as @e[tag=ob.visit_dealer,tag=!ob.trader] at @s run function obs:trader_trades