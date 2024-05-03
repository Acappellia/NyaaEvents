##init player

#define score_holder #search_result

##check if player changed
data remove storage ne:tmp search
data modify storage ne:tmp search.target_UUID set from entity @s UUID
execute store result score #search_result ne run function ne:player_data/search_uuid
execute if score #search_result ne matches 2 run function ne:player_data/recover_data
execute if score #search_result ne matches 2 run return 1

##add data in uuid_check
data modify storage ne:player uuid_check prepend value {}
data modify storage ne:player uuid_check[0].UUID set from storage ne:tmp search.target_UUID
execute store result score @s ne_pid store result storage ne:player uuid_check[0].playerid int 1 run scoreboard players add #player_id ne 1
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:player_head",Count:1b}]}
item modify block 0 -64 0 container.0 ne:set_skull
data modify storage ne:player uuid_check[0].name set from block 0 -64 0 Items[0].tag.SkullOwner.Name
setblock 0 -64 0 bedrock

##init data
data modify storage ne:player players append value {}
data modify storage ne:player players[-1].playerid set from storage ne:player uuid_check[0].playerid

scoreboard players set @s ne_killcd 10600
scoreboard players set @s ne_points 20
scoreboard players set @s ne_comp 1
function ne:show_eventpage