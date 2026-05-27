kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..2,limit=1]

summon item ~ ~ ~ {Item:{id:"minecraft:iron_nugget",count:3}}

particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 0.01 10

playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 1 1.2

kill @s