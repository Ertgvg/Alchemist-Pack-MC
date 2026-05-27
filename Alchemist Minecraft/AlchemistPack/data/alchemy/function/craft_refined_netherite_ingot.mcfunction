# Kill the Coal Block ingredient nearby
kill @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..2,limit=1]

# 2. The "Dice Roll": Set score to 1 (Success) or 0 (Failure)
scoreboard players set #roll alchemy_temp 0
execute if predicate alchemy:chance_70 run scoreboard players set #roll alchemy_temp 1

# 3. SUCCESS: Only if score is 1
execute if score #roll alchemy_temp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:custom_data":{alchemist_stage:"refined_netherite"},"minecraft:item_name":{"text":"Refined Netherite Ingot","italic":false, "color":"dark_purple"},"minecraft:custom_model_data":{floats:[1005.0f]}}}}
execute if score #roll alchemy_temp matches 1 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.8
execute if score #roll alchemy_temp matches 1 run particle minecraft:large_smoke ~ ~ ~ 0.2 0.2 0.2 0.05 10

# 4. FAILURE: Only if score is 0
execute if score #roll alchemy_temp matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",count:1}}
execute if score #roll alchemy_temp matches 0 run playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 0.5
execute if score #roll alchemy_temp matches 0 run particle minecraft:ash ~ ~ ~ 0.3 0.3 0.3 0.01 20

# Kill the anchor Raw Iron
kill @s