scoreboard players add @s cob.trial_timer 1

execute if entity @s[tag=cob.lightning_indicator] if score @s cob.trial_timer matches 3.. run function obs:trial_handler/ability/drowned/lightning_strike