# 1. If the block at the marker is NO LONGER an anvil, trigger self-destruction
execute unless block ~ ~ ~ minecraft:anvil run function alchemy:destroy_alchemical_anvil

# 2. If the anvil block is safe, proceed to scan for dropped item recipes
execute if block ~ ~ ~ minecraft:anvil run function alchemy:check_anvil_recipes