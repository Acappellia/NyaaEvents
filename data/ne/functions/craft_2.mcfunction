advancement revoke @s only ne:craft_2

clear @s paper 1

function ne:give_item with storage ne:data food_2

##check special chance
#define score_holder #loot_random
execute store result score #loot_random ne run random value 1..100
execute if score #loot_random ne matches 5.. run return -1

##add score
scoreboard players add @s ne_points 1

##give item
function ne:give_item with storage ne:data mob_drop
playsound block.enchantment_table.use player @s ~ ~ ~ 1 1.5