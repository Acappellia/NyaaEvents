advancement revoke @s only ne:kill_mob

##clear player cd
#define score_holder #current_cd
scoreboard players operation #current_cd ne = @s ne_killcd
scoreboard players remove @s ne_killcd 800
execute if score @s ne_killcd matches ..-1 run scoreboard players set @s ne_killcd 0

##check if drop
#define score_holder #loot_random
execute store result score #loot_random ne run random value 1..600
execute if score #loot_random ne > #current_cd ne run return -1

##add score
scoreboard players add @s ne_points 2
execute if score @s ne_points matches 512.. run function ne:player_finish

##give item
function ne:give_item with storage ne:data mob_drop

##effect
playsound item.trident.return player @s ~ ~ ~ 1 1.3
particle wax_off ~ ~0.5 ~ 2 1 2 0 20