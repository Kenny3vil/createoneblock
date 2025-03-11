data remove block 0 60 0 server_data.rewarded_players

execute as @e[type=item,predicate=obs:trial_reward] at @s run function obs:trial_handler/reward_state/mob_handler

execute if items entity @a container.* *[minecraft:custom_data={trial_reward:1b}] run function obs:trial_handler/reward_state/clear_egg

scoreboard players add #cob.reward.timer cob.trial 1

execute if score #cob.reward.timer cob.trial matches 6000.. unless block 0 60 0 minecraft:vault[vault_state=ejecting] unless block 0 60 0 minecraft:vault[vault_state=unlocking] run function obs:trial_handler/reward_state/stop

execute if score #cob.reward.timer cob.trial matches 600.. unless items entity @a container.* minecraft:trial_key[!minecraft:custom_data] unless items entity @a container.* minecraft:ominous_trial_key[!minecraft:custom_data] unless block 0 60 0 minecraft:vault[vault_state=ejecting] unless block 0 60 0 minecraft:vault[vault_state=unlocking] run function obs:trial_handler/reward_state/stop

execute if block ~ ~ ~ vault[ominous=true] unless items entity @a container.* minecraft:ominous_trial_key[!minecraft:custom_data] unless block 0 60 0 minecraft:vault[vault_state=ejecting] unless block 0 60 0 minecraft:vault[vault_state=unlocking] run setblock ~ ~ ~ vault{config:{loot_table:"obs:gameplay/trial/base/reward",key_item:{id:"minecraft:trial_key"}}}

execute if block ~ ~ ~ vault[ominous=false] if items entity @a container.* minecraft:ominous_trial_key[!minecraft:custom_data] unless block 0 60 0 minecraft:vault[vault_state=ejecting] unless block 0 60 0 minecraft:vault[vault_state=unlocking] run setblock ~ ~ ~ vault[ominous=true]{config:{loot_table:"obs:gameplay/trial/ominous/reward_ominous",key_item:{id:"minecraft:ominous_trial_key"}}}