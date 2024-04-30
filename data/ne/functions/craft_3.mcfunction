advancement revoke @s only ne:craft_3

#define score_holder #check_craft
execute store result score #check_craft ne run clear @s knowledge_book 1
execute unless score #check_craft ne matches 1.. run return -1

function ne:give_item with storage ne:data food_3

##check special chance
#define score_holder #loot_random
execute store result score #loot_random ne run random value 1..100
execute if score #loot_random ne matches 2.. run return -1

##add score
scoreboard players add @s ne_points 1
execute if score @s ne_points matches 512.. run function ne:player_finish

##give item
function ne:give_item with storage ne:data mob_drop
playsound entity.ender_eye.death player @a ~ ~ ~ 1 1.2
