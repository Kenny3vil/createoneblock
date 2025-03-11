
execute as @e[tag=ob.visitor] at @s run particle minecraft:cloud ~ ~ ~ 0.125 0.5 0.125 0.05 10 force
ride @e[tag=ob.visitor,limit=1] dismount
execute as @e[tag=ob.visitor] at @s run data modify entity @s SleepingZ set value 0
tp @e[tag=ob.visitor] 0 -1000 0

summon marker ~ ~ ~ {Tags:["ob.visitor_spawn"]}
spreadplayers ~ ~ 50 100 false @e[tag=ob.visitor_spawn]

execute as @e[tag=ob.visitor_spawn] at @s run function obs:spawn_check

execute at @e[tag=ob.visitor_spawn] run summon villager ~ ~ ~ {Tags:["ob.villager","ob.visitor","ob.spawned"],CustomName:'{"text":"You shouldnt be seeing this name"}',VillagerData:{profession:"minecraft:nitwit"},Offers:{Recipes:[]}}

execute store result score #cob.temp_1 cob.block run random value 1..5

execute if score #cob.temp_1 cob.block matches 1 run data merge entity @e[tag=ob.spawned,limit=1] {VillagerData:{type:"minecraft:desert"}}
execute if score #cob.temp_1 cob.block matches 2 run data merge entity @e[tag=ob.spawned,limit=1] {VillagerData:{type:"minecraft:plains"}}
execute if score #cob.temp_1 cob.block matches 3 run data merge entity @e[tag=ob.spawned,limit=1] {VillagerData:{type:"minecraft:savanna"}}
execute if score #cob.temp_1 cob.block matches 4 run data merge entity @e[tag=ob.spawned,limit=1] {VillagerData:{type:"minecraft:snow"}}
execute if score #cob.temp_1 cob.block matches 5 run data merge entity @e[tag=ob.spawned,limit=1] {VillagerData:{type:"minecraft:taiga"}}

execute at @e[tag=ob.visitor_spawn] run summon firework_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;13369599],fade_colors:[I;0]},{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[I;0],fade_colors:[I;13369599]}]}}}}

loot replace entity @e[type=villager,limit=1,tag=ob.visitor,tag=ob.spawned] weapon.mainhand 2 loot obs:technical/visitor_names

data modify entity @e[type=villager,limit=1,tag=ob.visitor,tag=ob.spawned] CustomName set from entity @e[type=villager,limit=1,tag=ob.visitor,tag=ob.spawned] HandItems[0].components.minecraft:custom_name

item replace entity @e[type=villager,limit=1,tag=ob.visitor,tag=ob.spawned] weapon.mainhand with air

execute as @e[tag=ob.visitor,tag=ob.spawned] at @s run function obs:visitor_requirements

tag @e[tag=ob.spawned] remove ob.spawned

kill @e[tag=ob.visitor_spawn]