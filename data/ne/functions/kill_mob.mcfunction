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

##give item
function ne:give_item with storage ne:data mob_drop

##effect
execute on target at @s run playsound particle.soul_escape player @a ~ ~ ~ 1 1
execute on target at @s run particle soul ~ ~0.5 ~ ~0.5 ~0.5 ~ 0 20