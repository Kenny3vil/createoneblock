summon cave_spider ~ ~ ~ {Health:6f,Tags:["cob.trial_mob"]}

execute store result score #cob.spider cob.trial if entity @e[type=cave_spider]

execute if score #cob.spider cob.trial matches ..4 run function obs:trial_handler/ability/boss/spider_loop