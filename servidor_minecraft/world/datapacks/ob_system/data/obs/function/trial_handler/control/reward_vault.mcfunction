
setblock ~ ~ ~ vault{config:{loot_table:"obs:gameplay/trial/base/reward",key_item:{id:"minecraft:trial_key"}}}

execute if items entity @a container.* minecraft:ominous_trial_key[!minecraft:custom_data] run setblock ~ ~ ~ minecraft:vault[ominous=true]{config:{loot_table:"obs:gameplay/trial/ominous/reward_ominous",key_item:{id:"minecraft:ominous_trial_key"}}}