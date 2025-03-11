
scoreboard players reset @s cob.trial_timer

execute store result score #cob.vex cob.trial if entity @e[type=vex]
execute store result score #cob.spider cob.trial if entity @e[type=cave_spider]
execute store result score #cob.clone cob.trial if entity @e[tag=cob.trial_clone]

execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.web] run function obs:trial_handler/ability/boss/web
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.wind] run function obs:trial_handler/ability/boss/wind_charge
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.effect] run function obs:trial_handler/ability/boss/spawners
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.vex] if score #cob.vex cob.trial matches ..3 run function obs:trial_handler/ability/boss/vex_loop
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.spider] if score #cob.spider cob.trial matches ..4 run function obs:trial_handler/ability/boss/spider_loop
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.clone] if score #cob.clone cob.trial matches ..2 run function obs:trial_handler/ability/boss/clone_loop
execute as @e[tag=cob.ability_trigger,sort=random,limit=1] if entity @s[tag=cob.ability.arrow] run function obs:trial_handler/ability/boss/start_arrows

scoreboard players reset #cob.temp_1 cob.block