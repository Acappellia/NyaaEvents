#define storage ne:data
#define storage ne:tmp
#define storage ne:player

scoreboard objectives add ne dummy
scoreboard players set #-1 ne -1
scoreboard players set #2 ne 2

scoreboard objectives add ne_pid dummy
scoreboard objectives add ne_killcd dummy
scoreboard objectives add ne_points dummy
scoreboard objectives add ne_finish dummy
scoreboard objectives add ne_comp dummy

#define score_holder #player_id
execute unless score #player_id ne matches -2147483648..2147483647 run scoreboard players set #player_id ne -1

forceload add 0 0 0 0

data modify storage ne:data mob_drop set value {id:"minecraft:prismarine_crystals",Count:1b,tag:{ne_token:1,display:{Name:'{"text":"劳动者晶石","italic":false,"color":"#00FF88"}',Lore:['{"text":"由汗水凝结而成的水晶","italic":false,"color":"gray"}','{"text":"是辛勤劳动的证明！！！","italic":false,"color":"gray"}','{"text":"（其实就是汗结晶了）","italic":false,"color":"dark_gray"}']}}}

data modify storage ne:data food_1 set value {id:"minecraft:suspicious_stew",Count:1b,tag:{effects:[{id:"minecraft:saturation",duration:20}],ne_food:1,display:{Name:'[{"text":"黄金蔬菜沙拉","color":"#ffcc00","italic":false}]',Lore:['[{"text":"精选大棚蔬菜，每个食材都经过烘焙处理","color":"#66ff66","italic":false}]','[{"text":"纯手工沙拉酱，原料新鲜纯天然，一口下去唇齿留香","color":"#66ff88","italic":false}]','""','[{"text":"兰娜娜推荐指数：","color":"white","italic":false},{"text":"★★★★☆","color":"#ffcc00","italic":false}]']}}}
data modify storage ne:data food_2 set value {id:"minecraft:potion",Count:1b,tag:{custom_potion_effects:[{id:"minecraft:saturation",amplifier:9b,duration:1}],Potion:"minecraft:empty",CustomPotionColor:16764331,ne_food:1,display:{Name:'[{"text":"夏季花茶舒芙蕾奶盖","color":"#ffaadd","italic":false}]',Lore:['[{"text":"夏季开花茶，精选烘焙茶叶和自然风干花瓣","color":"#66ffaa","italic":false}]','[{"text":"法国进口烘焙大师推荐舒芙蕾，完美的下午茶甜品","color":"#ffaaaa","italic":false}]','""','[{"text":"兰娜娜推荐指数：","color":"white","italic":false},{"text":"★★★★★","color":"#ffaadd","italic":false}]']}}}
data modify storage ne:data food_3 set value {id:"minecraft:potion",Count:1b,tag:{custom_potion_effects:[{id:"minecraft:speed",amplifier:0b,duration:600},{id:"minecraft:haste",amplifier:0b,duration:600},{id:"minecraft:glowing",amplifier:0b,duration:600}],CustomPotionColor:13959154,ne_food:1,display:{Name:'[{"text":"水果刨冰奢华版","color":"#ffff66","italic":false}]',Lore:['[{"text":"夏天快到了，为什么不来一碗奢华刨冰！！！","color":"#ffffaa","italic":false}]','""','[{"text":"兰娜娜推荐指数：","color":"white","italic":false},{"text":"★★★★★","color":"#ffff66","italic":false}]']}}}

data modify storage ne:data final_reward set value {id:"minecraft:golden_pickaxe",Count:1b,tag:{CustomModelData:5001,Unbreakable:1b,display:{Name:'{"text":"墨冰矿工镐","italic":false,"color":"#66aacc"}',Lore:['{"text":"传说中不会损坏的神奇镐子","italic":false,"color":"gray"}','{"text":"由劳动者晶石打造而成","italic":false,"color":"gray"}','{"text":"能令人回味过去辛劳的时光","italic":false,"color":"#CCCCCC"}','""','{"text":"“2024 劳动节”","italic":true,"color":"yellow"}']}}}

schedule function ne:20gt_tick 20t append