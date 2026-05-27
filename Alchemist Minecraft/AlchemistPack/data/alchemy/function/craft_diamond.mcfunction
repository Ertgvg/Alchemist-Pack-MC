# 1. Kill the nearby ingredient (Blaze Powder)
kill @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..3,limit=1]

# 2. Summon the diamond output at the coal block's feet
summon item ~ ~ ~ {Item:{id:"minecraft:diamond",count:1}}

# 3. Create the visual and sound effects at the location
particle minecraft:small_flame ~ ~0.5 ~ 0.3 0.3 0.3 0.05 40 normal
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 1 1.2

# 4. Kill the anchor ingredient (Coal Block) LAST so the function finishes safely
kill @s