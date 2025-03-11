
scoreboard objectives add cob.death deathCount

scoreboard objectives add cob.y dummy
scoreboard objectives add cob.dirt dummy

scoreboard objectives add cob.netherrack minecraft.used:minecraft.netherrack
scoreboard objectives add cob.endstone minecraft.used:minecraft.end_stone

scoreboard objectives add cob.carrots minecraft.used:minecraft.carrot
scoreboard objectives add cob.carrots_2 dummy
scoreboard objectives add cob.meaty minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add cob.sushi minecraft.used:minecraft.dried_kelp

scoreboard objectives add cob.kill_zompig minecraft.killed:minecraft.zombified_piglin
scoreboard objectives add cob.phantom minecraft.killed:minecraft.phantom

scoreboard objectives add cob.name dummy

scoreboard objectives add cob.block dummy
scoreboard objectives add cob.block_max dummy

scoreboard objectives add cob.trial dummy
scoreboard objectives add cob.trial_max dummy
scoreboard objectives add cob.trial_cd dummy
scoreboard objectives add cob.trial_timer dummy

scoreboard objectives add cob.mob_cap dummy
scoreboard objectives add cob.simultaneous_mobs dummy

scoreboard objectives add cob.display dummy
scoreboard objectives add cob.trader dummy

scoreboard objectives add cob.cat dummy
scoreboard objectives add cob.cow dummy
scoreboard objectives add cob.sheep dummy
scoreboard objectives add cob.chicken dummy
scoreboard objectives add cob.horse dummy
scoreboard objectives add cob.donkey dummy
scoreboard objectives add cob.fox dummy
scoreboard objectives add cob.pig dummy
scoreboard objectives add cob.goat dummy
scoreboard objectives add cob.llama dummy
scoreboard objectives add cob.wolf.1 dummy
scoreboard objectives add cob.wolf.2 dummy
scoreboard objectives add cob.wolf.3 dummy
scoreboard objectives add cob.wolf.4 dummy
scoreboard objectives add cob.wolf.5 dummy
scoreboard objectives add cob.wolf.6 dummy
scoreboard objectives add cob.wolf.7 dummy
scoreboard objectives add cob.wolf.8 dummy
scoreboard objectives add cob.wolf.9 dummy

scoreboard objectives add progress_setting trigger
scoreboard objectives add cob.setting dummy

scoreboard objectives add cob.phase dummy
scoreboard players add @e[tag=cob.block,limit=1] cob.phase 0

bossbar add cob.block [{"text":"🪓 "},{"fallback":"Progress","translate":"obs.bar.progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.block"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.block_max"}}]
bossbar set minecraft:cob.block color green

bossbar add cob.trial [{"text":"🗡️ "},{"fallback":"Trial Progress","translate":"obs.bar.trial_progress"},{"text":" | "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial"}},{"text":" / "},{"score":{"name":"@e[tag=cob.block,limit=1]","objective":"cob.trial_max"}}]
bossbar set minecraft:cob.trial color red

scoreboard players set #cob.con.2 cob.block 2
scoreboard players set #cob.con.3 cob.block 3
scoreboard players set #cob.con.4 cob.block 4

scoreboard players set #cob.con.10 cob.block 10
scoreboard players set #cob.con.15 cob.block 15
scoreboard players set #cob.con.25 cob.block 25
scoreboard players set #cob.con.30 cob.block 30
scoreboard players set #cob.con.100 cob.block 100

schedule function obs:second 1s
