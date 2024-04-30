##recover player data

execute store result score @s ne_pid run data get storage ne:player uuid_check[0].playerid
function ne:player_data/recover_scoreboard with storage ne:player uuid_check[0]

##update name
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"player_head",Count:1b}]}
item modify block 0 -64 0 container.0 ne:set_skull
data modify storage ne:player uuid_check[0].name set from block 0 -64 0 Items[0].tag.SkullOwner.Name
setblock 0 -64 0 bedrock