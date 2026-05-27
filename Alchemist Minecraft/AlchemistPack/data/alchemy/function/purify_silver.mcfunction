# 1. Smash the nearby Water Bottle catalyst entity safely
kill @e[type=item,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}},distance=..2,limit=1]

# 2. Roll the 50/50 probability gate
scoreboard players set #roll alchemy_temp 0
execute if predicate alchemy:chance_50 run scoreboard players set #roll alchemy_temp 1

# ==========================================
# OUTCOMES
# ==========================================

# SUCCESS (50%): The carbon washes clean, leaving pure Silver (Diamond Base, 1006.0f)
execute if score #roll alchemy_temp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",count:1,components:{"minecraft:custom_data":{alchemist_stage:"silver"},"minecraft:item_name":{"text":"Silver","color":"#C0C0C0","italic":false},"minecraft:custom_model_data":{floats:[1006.0f]}}}}
execute if score #roll alchemy_temp matches 1 run playsound minecraft:entity.player.id_convert master @a ~ ~ ~ 1 1.2
execute if score #roll alchemy_temp matches 1 run particle minecraft:splash ~ ~0.5 ~ 0.4 0.4 0.4 0.1 30

# FAILURE (50%): The metal rusts completely into standard Slag
execute if score #roll alchemy_temp matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:brick",count:1,components:{"minecraft:item_name":{"text":"Alchemical Slag","color":"gray"},"minecraft:custom_model_data":{floats:[1003.0f]}}}}
execute if score #roll alchemy_temp matches 0 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.7
execute if score #roll alchemy_temp matches 0 run particle minecraft:ash ~ ~0.5 ~ 0.3 0.3 0.3 0.02 20

# 3. Destroy the input Carbonized Iron ingot to avoid duplication exploits
kill @s