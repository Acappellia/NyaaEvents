advancement revoke @s only ne:loot_chest

playsound entity.ender_eye.death player @a ~ ~ ~ 1 1.2

scoreboard players add @s ne_points 2
execute if score @s ne_points matches 512.. run function ne:player_finish