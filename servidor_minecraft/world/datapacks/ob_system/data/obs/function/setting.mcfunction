
scoreboard players add @s cob.setting 1
execute if score @s cob.setting matches 3.. run scoreboard players set @s cob.setting 0

execute if score @s cob.setting matches 1 run scoreboard players set @s cob.display 6
execute if score @s cob.setting matches 2 run scoreboard players set @s cob.display 0

tellraw @s[scores={cob.setting=0}] [{"color":"green","fallback":"Progress bar setting changed","translate":"obs.setting.message"},{"color":"green","text":" : "},{"color":"dark_green","fallback":"Default","translate":"obs.setting.message.0"}]
tellraw @s[scores={cob.setting=1}] [{"color":"green","fallback":"Progress bar setting changed","translate":"obs.setting.message"},{"color":"green","text":" : "},{"color":"dark_green","fallback":"Always Visible","translate":"obs.setting.message.1"}]
tellraw @s[scores={cob.setting=2}] [{"color":"green","fallback":"Progress bar setting changed","translate":"obs.setting.message"},{"color":"green","text":" : "},{"color":"dark_green","fallback":"Never Visible","translate":"obs.setting.message.2"}]

scoreboard players set @s progress_setting 0