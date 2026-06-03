# 0. Safety Check: Stop immediately if there is no Refined Iron Ingot nearby
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",components:{"minecraft:custom_model_data":{floats:[1002.0f]}}}},distance=..1.5] run return 0


# 1. Consume exactly one Refined Iron Ingot
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",components:{"minecraft:custom_model_data":{floats:[1002.0f]}}}},distance=..1.5,limit=1,sort=nearest]

# 2. Manifest the SWORD (Only triggers if the original item was a sword)
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_sword",count:1,components:{custom_name:[{"text":"Refined Iron Blade","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# 3. Manifest the AXE (Only triggers if the original item was an axe)
execute if entity @s[nbt={Item:{id:"minecraft:iron_axe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_axe",count:1,components:{custom_name:[{"text":"Refined Iron Axe","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# 4. Manifest the SPEAR
execute if entity @s[nbt={Item:{id:"minecraft:iron_spear"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_spear",count:1,components:{custom_name:[{"text":"Refined Iron Spear","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# --------------------------------

# 5. Manifest the PICKAXE
execute if entity @s[nbt={Item:{id:"minecraft:iron_pickaxe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_pickaxe",count:1,components:{custom_name:[{"text":"Refined Iron Pickaxe","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# 6. Manifest the HOE
execute if entity @s[nbt={Item:{id:"minecraft:iron_hoe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_hoe",count:1,components:{custom_name:[{"text":"Refined Iron Hoe","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# 7. Manifest the SHOVEL
execute if entity @s[nbt={Item:{id:"minecraft:iron_shovel"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_shovel",count:1,components:{custom_name:[{"text":"Refined Iron Shovel","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# --------------------------------

# 8. Manifest the helmet
execute if entity @s[nbt={Item:{id:"minecraft:iron_helmet"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_helmet",count:1,components:{custom_name:[{"text":"Refined Iron Helmet","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 9. Manifest the chestplate
execute if entity @s[nbt={Item:{id:"minecraft:iron_chestplate"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_chestplate",count:1,components:{custom_name:[{"text":"Refined Iron Chestplate","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 10. Manifest the leggings
execute if entity @s[nbt={Item:{id:"minecraft:iron_leggings"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_leggings",count:1,components:{custom_name:[{"text":"Refined Iron Leggings","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 11. Manifest the boots
execute if entity @s[nbt={Item:{id:"minecraft:iron_boots"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:iron_boots",count:1,components:{custom_name:[{"text":"Refined Iron Boots","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

#12. Manifest the shield
execute if entity @s[nbt={Item:{id:"minecraft:shield"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:shield",count:1,components:{custom_name:[{"text":"Refined Iron Shield","italic":false,"color":"aqua"}],enchantment_glint_override:false,enchantments:{unbreaking:5},"minecraft:custom_model_data":{floats:[1008.0f]}}}}

# --------------------------------

# 12. Audio/Visual feedback (High pitch for a sharp blade forge)
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.2
particle minecraft:enchanted_hit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20

# 13. Destroy the original un-upgraded weapon
kill @s