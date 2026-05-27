# 1. Consume exactly one Dragon's Breath and one Refined Netherite Sword from the anvil top
kill @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..1.5,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..1.5,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_sword",components:{"minecraft:custom_model_data":{floats:[9000.0f]}}}},distance=..1.5,limit=1]

# 2. Manifest the Dragon-Coated Netherite Blade (Preserves 9001 model texture)
summon item ~ ~0.5 ~ {Item:{id:netherite_sword,count:1,components:{custom_name:[{"text":"Excalibur","italic":false,"underlined":true,"color":"#ffd700","shadow_color":-16250872}],"minecraft:custom_model_data":{floats:[9001.0f]},enchantment_glint_override:false,enchantments:{bane_of_arthropods:5,fire_aspect:10,looting:5,sharpness:10,smite:5,sweeping_edge:5},unbreakable:{}}}}

# 3. Audio/Visual feedback
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1.1
particle minecraft:dragon_breath ~ ~0.5 ~ 0.4 0.4 0.4 0.05 25


