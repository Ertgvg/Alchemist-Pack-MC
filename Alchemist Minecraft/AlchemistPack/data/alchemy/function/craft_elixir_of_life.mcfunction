# 1. Safely consume exactly 1 of each ingredient from the ground context
kill @e[type=item,nbt={Item:{id:"minecraft:dragon_egg"}},distance=..2,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:dragon_head"}},distance=..2,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..2,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:diamond",components:{"minecraft:custom_model_data":{floats:[1006.0f]}}}},distance=..2,limit=1]

# 2. Summon the legendary Elixir of Life (Custom Model Data 1007.0f)
# Resistance is amplifier:4 (Level 5). I set the duration to 3600 ticks (3 minutes)
summon item ~ ~0.5 ~ {Item:{id:"minecraft:potion",count:1,components:{"minecraft:custom_name":{"text":"Elixir of Life","color":"#2ECC71","bold":false,"italic":false},"minecraft:custom_model_data":{floats:[1007.0f]},"minecraft:potion_contents":{custom_color:2411522,custom_effects:[{id:"minecraft:instant_health",amplifier:5,duration:100},{id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:false},{id:"minecraft:regeneration",amplifier:5,duration:100,show_particles:false}]},"minecraft:enchantment_glint_override":true}}}

# 3. Boss-Level Audio/Visual Feedback
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.6 1.5
particle minecraft:totem_of_undying ~ ~0.5 ~ 0.5 0.5 0.5 0.1 100
particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1

# 4. Destroy the anchor egg entity to stop duplicates
kill @s