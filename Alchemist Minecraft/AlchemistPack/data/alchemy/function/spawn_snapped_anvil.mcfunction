# ==========================================
# BRANCH 1: PLAYER IS FACING SOUTH (Rotation between -45 and 45)
# ==========================================
execute if entity @p[y_rotation=-45..45] align xyz run setblock ~ ~ ~ minecraft:anvil[facing=west]
execute if entity @p[y_rotation=-45..45] align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Rotation:[90f,0f],Tags:["alchemical_anvil_mesh"],item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":{floats:[9999.0f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.03f,1.03f,1.03f]}}

# ==========================================
# BRANCH 2: PLAYER IS FACING WEST (Rotation between 45 and 135)
# ==========================================
execute if entity @p[y_rotation=45..135] align xyz run setblock ~ ~ ~ minecraft:anvil[facing=north]
execute if entity @p[y_rotation=45..135] align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Rotation:[180f,0f],Tags:["alchemical_anvil_mesh"],item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":{floats:[9999.0f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.03f,1.03f,1.03f]}}

# ==========================================
# BRANCH 3: PLAYER IS FACING EAST (Rotation between -135 and -45)
# ==========================================
execute if entity @p[y_rotation=-135..-45] align xyz run setblock ~ ~ ~ minecraft:anvil[facing=south]
execute if entity @p[y_rotation=-135..-45] align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Rotation:[0f,0f],Tags:["alchemical_anvil_mesh"],item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":{floats:[9999.0f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.03f,1.03f,1.03f]}}

# ==========================================
# BRANCH 4: PLAYER IS FACING NORTH (Anything else outside the other 3 sectors)
# ==========================================
execute unless entity @p[y_rotation=-135..135] align xyz run setblock ~ ~ ~ minecraft:anvil[facing=east]
execute unless entity @p[y_rotation=-135..135] align xyz run summon item_display ~0.5 ~0.5 ~0.5 {Rotation:[-90f,0f],Tags:["alchemical_anvil_mesh"],item:{id:"minecraft:anvil",count:1,components:{"minecraft:custom_model_data":{floats:[9999.0f]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.03f,1.03f,1.03f]}}

# ==========================================
# CORE ANCHOR & EFFECTS
# ==========================================
execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {Tags:["alchemical_anvil"]}

playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.6
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 12