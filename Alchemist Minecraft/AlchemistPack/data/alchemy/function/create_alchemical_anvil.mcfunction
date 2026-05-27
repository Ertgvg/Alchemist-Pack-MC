# 1. Force the location to the Anvil, THEN consume the nearby Refined Iron (NBT matched to tick file!)
execute at @s run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1002.0f]}}}},distance=..2,limit=1,sort=nearest]

# 2. Force the location to the Anvil, offset upward by 0.1, and spawn the new block
execute at @s positioned ~ ~0.1 ~ run function alchemy:spawn_snapped_anvil

# 3. Delete the original dropped anvil item entity
kill @s