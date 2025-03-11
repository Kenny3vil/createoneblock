execute store result score #cob.temp_1 cob.block run random value 1..4

execute if score #cob.temp_1 cob.block matches 1 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:arrow",count:1},spawn_item_after_ticks:80}
execute if score #cob.temp_1 cob.block matches 2 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}},spawn_item_after_ticks:80}
execute if score #cob.temp_1 cob.block matches 3 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_slowness"}}},spawn_item_after_ticks:80}
execute if score #cob.temp_1 cob.block matches 4 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:wind_charge",count:1},spawn_item_after_ticks:80}

scoreboard players reset #cob.temp_1 cob.block