execute store result score #cob.temp_1 cob.block run random value 1..7

execute if score #cob.temp_1 cob.block matches 1 if entity @e[tag=cob.ability.web] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 1 unless entity @e[tag=cob.ability.web] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.web"]}

execute if score #cob.temp_1 cob.block matches 2 if entity @e[tag=cob.ability.wind] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 2 unless entity @e[tag=cob.ability.wind] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.wind"]}

execute if score #cob.temp_1 cob.block matches 3 if entity @e[tag=cob.ability.effect] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 3 unless entity @e[tag=cob.ability.effect] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.effect"]}

execute if score #cob.temp_1 cob.block matches 4 if entity @e[tag=cob.ability.vex] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 4 unless entity @e[tag=cob.ability.vex] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.vex"]}

execute if score #cob.temp_1 cob.block matches 5 if entity @e[tag=cob.ability.spider] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 5 unless entity @e[tag=cob.ability.spider] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.spider"]}

execute if score #cob.temp_1 cob.block matches 6 if entity @e[tag=cob.ability.clone] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 6 unless entity @e[tag=cob.ability.clone] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.clone"]}

execute if score #cob.temp_1 cob.block matches 7 if entity @e[tag=cob.ability.arrow] run function obs:trial_handler/spawn_mob/boss/ability_rng
execute if score #cob.temp_1 cob.block matches 7 unless entity @e[tag=cob.ability.arrow] run summon marker 0 60 0 {Tags:["cob.ability_trigger","cob.ability.arrow"]}

scoreboard players reset #cob.temp_1 cob.block