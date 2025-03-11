execute store result score #cob.temp_1 cob.block run random value 1..13

execute if score #cob.temp_1 cob.block matches 1 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 2 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:slow_falling"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 3 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 4 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strength"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 5 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:wind_charged"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 6 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:infested"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 7 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:oozing"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 8 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:weaving"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 9 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:arrow",count:1},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 10 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 11 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_slowness"}}},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 12 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:fire_charge",count:1},spawn_item_after_ticks:80}

execute if score #cob.temp_1 cob.block matches 13 run summon minecraft:ominous_item_spawner ~ ~5 ~ {item:{id:"minecraft:wind_charge",count:1},spawn_item_after_ticks:80}

scoreboard players reset #cob.temp_1 cob.block