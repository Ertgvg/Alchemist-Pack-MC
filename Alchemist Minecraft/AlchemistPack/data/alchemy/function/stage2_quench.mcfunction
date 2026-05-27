# Summon the final Steel Ingot
summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_name":{"text":"Refined Iron","color":"aqua"},"minecraft:custom_model_data":{floats:[1002.0f]}}}}

# Visuals and Sound
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 0.01 20
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 1 1.5

# Kill the Carbonized Iron
kill @s