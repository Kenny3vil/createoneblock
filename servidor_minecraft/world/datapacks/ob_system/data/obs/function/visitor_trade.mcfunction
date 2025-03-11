advancement revoke @s only obs:technical/visitor

execute as @e[type=villager,tag=ob.visitor] at @s run function obs:visitor_count

clear @a *[minecraft:custom_data={visitor_requirement:1b}]
clear @a *[minecraft:custom_data={visitor_requirement:1}]

schedule function obs:visitor_delete_requirement 1t