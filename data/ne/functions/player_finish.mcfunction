scoreboard players set @s ne_points 512
execute if score @s ne_finish matches 1 run return -1

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaEvents","color": "#44ffaa"},{"text": "]","color": "white"},{"text": " 活动热度已达成累计目标！","color": "yellow"}]
playsound ui.toast.challenge_complete player @a ~ ~ ~ 1 0.9
particle totem_of_undying ~ ~1 ~ 0 0 0 1 100
scoreboard players set @s ne_finish 1

function ne:give_item with storage ne:data final_reward