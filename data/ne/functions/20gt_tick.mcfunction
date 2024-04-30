scoreboard players add @a ne_killcd 1
execute as @a unless score @s ne_pid matches 0.. at @s run function ne:player_data/init

schedule function ne:20gt_tick 1s replace