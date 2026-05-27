# 0. Safety Check: Stop immediately if there is no Silver nearby
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:diamond",components:{"minecraft:custom_model_data":{floats:[1006.0f]}}}},distance=..1.5] run return 0


# 1. Consume exactly one Silver
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",components:{"minecraft:custom_model_data":{floats:[1006.0f]}}}},distance=..1.5,limit=1,sort=nearest]

# 2. Manifest the SWORD (Only triggers if the original item was a sword)
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_sword,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Sword","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:8.0,slot:mainhand,operation:add_value,id:"1779182399095"},{type:attack_speed,amount:-1.8,slot:mainhand,operation:add_value,id:"1779182399096"}],max_damage:1367}}}

# 3. Manifest the AXE (Only triggers if the original item was an axe)
execute if entity @s[nbt={Item:{id:"minecraft:golden_axe"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_axe,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Axe","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:10,slot:mainhand,operation:add_value,id:"1779182519277"},{type:attack_speed,amount:-2.5,slot:mainhand,operation:add_value,id:"1779182519278"}],max_damage:1367}}}

# 4. Manifest the SPEAR
execute if entity @s[nbt={Item:{id:"minecraft:golden_spear"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_spear,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Spear","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:5,slot:mainhand,operation:add_value,id:"1779182602896"},{type:attack_speed,amount:-2.05,slot:mainhand,operation:add_value,id:"1779182602897"}],max_damage:1367}}}

# --------------------------------

# 5. Manifest the PICKAXE
execute if entity @s[nbt={Item:{id:"minecraft:golden_pickaxe"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_pickaxe,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Pickaxe","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:5,slot:mainhand,operation:add_value,id:"1779182802324"},{type:attack_speed,amount:-1.2,slot:mainhand,operation:add_value,id:"1779182802325"}],max_damage:1367}}}

# 6. Manifest the HOE
execute if entity @s[nbt={Item:{id:"minecraft:golden_hoe"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_hoe,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Hoe","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:1,slot:mainhand,operation:add_value,id:"1779182885751"},{type:attack_speed,amount:-4,slot:mainhand,operation:add_value,id:"1779182885752"}],max_damage:1367}}}

# 7. Manifest the SHOVEL
execute if entity @s[nbt={Item:{id:"minecraft:golden_shovel"}}] run summon item ~ ~0.5 ~ {Item:{id:golden_shovel,count:1,components:{custom_name:[{"text":"Silver-Plated Gold Shovel","italic":false,"color":"yellow"}],attribute_modifiers:[{type:attack_damage,amount:5,slot:mainhand,operation:add_value,id:"1779182928767"},{type:attack_speed,amount:-1.7,slot:mainhand,operation:add_value,id:"1779182928768"}],max_damage:1367}}}

playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.2
particle minecraft:enchanted_hit ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20

# 13. Destroy the original un-upgraded weapon
kill @s