summon marker ~ ~ ~ {Tags:["cob.charge_spawner"]}

spreadplayers ~ ~ 6 12 false @e[tag=cob.charge_spawner]

execute as @e[tag=cob.charge_spawner] at @s run summon minecraft:breeze_wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0]}

kill @e[tag=cob.charge_spawner]