# ===========================================================

# RECIPES: Scan for an Iron Tools/Weapons/Armors to upgrade
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_spear"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron

# ------------------

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_pickaxe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_hoe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_shovel"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron

# ------------------

execute as @e[type=item,nbt={Item:{id:"minecraft:iron_helmet"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_iron




# ===========================================================

# RECIPES: Scan for an Netherite Tools/Weapons/Armors to upgrade
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_sword"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_axe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_spear"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite

# ------------------

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_pickaxe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_hoe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_shovel"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite

# ------------------

execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_helmet"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_chestplate"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_leggings"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_boots"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_netherite


# ===========================================================

# RECIPE 3: Refined Netherite Sword (9001) + Dragon's Breath -> Big Upgrade
execute if entity @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..1.5] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..1.5] if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":{floats:[9000.0f]}}}},distance=..1.5] run function alchemy:coat_netherite_sword

# ===========================================================

# ==========================================
# SILVER COATING: GOLD TOOLS -> REFINED DURA GOLD
# ==========================================
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_sword"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_axe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_spear"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold

# ------------------

execute as @e[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_hoe"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_shovel"}},distance=..1.5,limit=1,sort=nearest] at @s run function alchemy:upgrade_weapon_gold

