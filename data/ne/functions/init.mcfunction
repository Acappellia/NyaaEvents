#define storage ne:data
#define storage ne:tmp

scoreboard objectives add ne dummy
scoreboard players set #-1 ne -1
scoreboard players set #2 ne 2

scoreboard objectives add ne_killcd dummy

scoreboard objectives add ne_points dummy

data modify storage ne:data mob_drop set value {id:"minecraft:iron_ingot",Count:1b,tag:{ne_token:1,display:{Name:'[{"text":"掉落物","color":"white","italic":false}]',Lore:['[{"text":"第一行lore","color":"white","italic":false}]','[{"text":"第二行lore","color":"white","italic":false}]','[{"text":"第三行lore","color":"white","italic":false}]']}}}

data modify storage ne:data food_1 set value {id:"minecraft:bread",Count:1b,tag:{ne_food:1,display:{Name:'[{"text":"食物","color":"white","italic":false}]',Lore:['[{"text":"第一行lore","color":"white","italic":false}]','[{"text":"第二行lore","color":"white","italic":false}]','[{"text":"第三行lore","color":"white","italic":false}]']}}}
data modify storage ne:data food_2 set value {id:"minecraft:bread",Count:1b,tag:{ne_food:1,display:{Name:'[{"text":"食物","color":"white","italic":false}]',Lore:['[{"text":"第一行lore","color":"white","italic":false}]','[{"text":"第二行lore","color":"white","italic":false}]','[{"text":"第三行lore","color":"white","italic":false}]']}}}
data modify storage ne:data food_3 set value {id:"minecraft:bread",Count:1b,tag:{ne_food:1,display:{Name:'[{"text":"食物","color":"white","italic":false}]',Lore:['[{"text":"第一行lore","color":"white","italic":false}]','[{"text":"第二行lore","color":"white","italic":false}]','[{"text":"第三行lore","color":"white","italic":false}]']}}}

schedule function ne:20gt_tick 20t