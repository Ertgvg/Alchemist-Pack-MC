# Initialize Scoreboards
scoreboard objectives add alchemy_temp dummy

# Chat Greeting
tellraw @a ["",{"text":"[Alchemy] ","color":"gold","bold":true},{"text":"The ancient arts have been awakened... Welcome, ","color":"white","bold":false},{"selector":"@a","color":"yellow","italic":true},{"text":"!","color":"white","italic":false}]

# Screen Title
title @a subtitle {"text":"Transmutation Circles Active","color":"light_purple","italic":true}
title @a title {"text":"Alchemist's Touch","color":"gold"}

# Sound Effect (Using the newer 26.1 sounds)
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~ ~ 1 1

