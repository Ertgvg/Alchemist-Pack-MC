# 1. Diamond Craft
execute as @e[type=item,nbt={Item:{id:"minecraft:coal_block"},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..3] run function alchemy:craft_diamond

#=================================

# 2. Stage 1 Carbonize
execute as @e[type=item,nbt={Item:{id:"minecraft:raw_iron"},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:coal_block"}},distance=..2] run function alchemy:stage1_carbonize

# 3. Stage 2 Quench
execute as @e[type=item,nbt={OnGround:1b}] at @s if items entity @s contents *[custom_data~{alchemist_stage:"carbonized"}] if block ~ ~ ~ water run function alchemy:stage2_quench

# Recycle Slag: Slag + Glass Bottle -> Returns a small amount of Iron Nuggets
execute as @e[type=item,nbt={Item:{id:"minecraft:brick",components:{"minecraft:item_name":{text:"Alchemical Slag",color:"gray"}}},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..2] run function alchemy:recycle_slag

#=================================

# 1% Chance for Carbonize Iron to convert into Netherite Ingot when combining with blaze rod
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",components:{"minecraft:custom_model_data":{floats:[1001.0f]}}},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2] run function alchemy:carbonize_iron_infuse

#=================================

# WORKSTATION FORGE: Ordinary Anvil + Refined Iron (1002.0) -> Spawns Alchemical Anvil Construction
execute as @e[type=item,nbt={Item:{id:"minecraft:anvil"},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",components:{"minecraft:custom_model_data":{floats:[1002.0f]}}}},distance=..2] run function alchemy:create_alchemical_anvil

# Run a continuous check-up on every Alchemical Anvil workstation
execute as @e[type=minecraft:marker,tag=alchemical_anvil] at @s run function alchemy:anvil_heartbeat

#=================================

# Refined Netherite Ingot
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..3] run function alchemy:craft_refined_netherite_ingot

#=================================

# Carbonized Iron (1001) + Water Bottle -> 50% Silver / 50% Alchemical Slag
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",components:{"minecraft:custom_model_data":{floats:[1001.0f]}}},OnGround:1b}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}},distance=..2] run function alchemy:purify_silver

#=================================