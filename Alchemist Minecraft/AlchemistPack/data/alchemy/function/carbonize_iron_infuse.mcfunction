# 1. If present, kill the Blaze Rod ingredient
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2,limit=1]

# 2. The Dice Roll: Default to 0 (Fallback/Glowstone Dust), set to 99 if ultra-lucky 1% hit
execute store success score #roll alchemy_temp if predicate alchemy:chance_10

# ==========================================
# CONSEQUENCES
# ==========================================

# RARE JACKPOT (Score 99): 1% Chance Netherite Ingot
execute if score #roll alchemy_temp matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:netherite_ingot",count:1,components:{"minecraft:item_name":{"text":"Alchemically Forged Netherite","color":"dark_purple","italic":false}}}}
execute if score #roll alchemy_temp matches 1 run playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 1 1
execute if score #roll alchemy_temp matches 1 run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.05 30


# STANDARD REACTION / FAILURE (Score 0): 99% Chance to destabilize into Glowstone Dust
# Changed count to 3, and updated item name component formatting
execute if score #roll alchemy_temp matches 0 run summon item ~ ~ ~ {Item:{id:"minecraft:glowstone_dust",count:4,components:{"minecraft:item_name":{"text":"Alchemical Residue","color":"yellow"}}}}
execute if score #roll alchemy_temp matches 0 run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 1.5
execute if score #roll alchemy_temp matches 0 run particle minecraft:glow ~ ~ ~ 0.3 0.3 0.3 0.1 20

# 3. Kill the anchor Carbonized Iron ingot so it doesn't duplicate
kill @s


