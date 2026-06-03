# 0. Safety Check: Stop immediately if there is no Refined Netherite Ingot nearby
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",components:{"minecraft:custom_model_data":{floats:[1005.0f]}}}},distance=..1.5] run return 0


# 1. Consume exactly one Refined Netherite Ingot
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",components:{"minecraft:custom_model_data":{floats:[1005.0f]}}}},distance=..1.5,limit=1,sort=nearest]

# 2. Manifest the SWORD (Only triggers if the original item was a sword)
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_model_data":{floats:[9000.0f]},custom_name:[{"text":"Refined Netherite Blade","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# 3. Manifest the AXE (Only triggers if the original item was an axe)
execute if entity @s[nbt={Item:{id:"minecraft:netherite_axe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_axe",count:1,components:{custom_name:[{"text":"Refined Netherite Axe","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# 4. Manifest the SPEAR
execute if entity @s[nbt={Item:{id:"minecraft:netherite_spear"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_spear",count:1,components:{custom_name:[{"text":"Refined Netherite Spear","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{sharpness:3,unbreaking:2}}}}

# --------------------------------

# 5. Manifest the PICKAXE
execute if entity @s[nbt={Item:{id:"minecraft:netherite_pickaxe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_pickaxe",count:1,components:{custom_name:[{"text":"Refined Netherite Pickaxe","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# 6. Manifest the HOE
execute if entity @s[nbt={Item:{id:"minecraft:netherite_hoe"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_hoe",count:1,components:{custom_name:[{"text":"Refined Netherite Hoe","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# 7. Manifest the SHOVEL
execute if entity @s[nbt={Item:{id:"minecraft:netherite_shovel"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_shovel",count:1,components:{custom_name:[{"text":"Refined Netherite Shovel","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{efficiency:3,unbreaking:2}}}}

# --------------------------------

# 8. Manifest the helmet
execute if entity @s[nbt={Item:{id:"minecraft:netherite_helmet"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_helmet",count:1,components:{custom_name:[{"text":"Refined Netherite Helmet","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 9. Manifest the chestplate
execute if entity @s[nbt={Item:{id:"minecraft:netherite_chestplate"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_chestplate",count:1,components:{custom_name:[{"text":"Refined Netherite Chestplate","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 10. Manifest the leggings
execute if entity @s[nbt={Item:{id:"minecraft:netherite_leggings"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_leggings",count:1,components:{custom_name:[{"text":"Refined Netherite Leggings","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# 11. Manifest the boots
execute if entity @s[nbt={Item:{id:"minecraft:netherite_boots"}}] run summon item ~ ~0.5 ~ {Item:{id:"minecraft:netherite_boots",count:1,components:{custom_name:[{"text":"Refined Netherite Boots","italic":false,"color":"dark_purple"}],enchantment_glint_override:false,enchantments:{protection:3,unbreaking:2}}}}

# --------------------------------

# 12. Audio/Visual feedback (High pitch for a sharp blade forge)
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.2
particle minecraft:enchanted_hit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20

# 13. Destroy the original un-upgraded weapon
kill @s