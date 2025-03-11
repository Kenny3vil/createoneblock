summon vex ~ ~ ~ {Health:6f,Tags:["cob.trial_mob"],Attributes:[{Name:generic.max_health,Base:6}]}

execute store result score #cob.vex cob.trial if entity @e[type=vex]

execute if score #cob.vex cob.trial matches ..2 run function obs:trial_handler/ability/boss/vex_loop