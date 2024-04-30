advancement revoke @s only ne:interact_trader

execute if entity @e[type=wandering_trader,tag=ne_may,distance=..6] run return -1
execute as @e[type=wandering_trader,distance=..6] at @s run function ne:trader_update