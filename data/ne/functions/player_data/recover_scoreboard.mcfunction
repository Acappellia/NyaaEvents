##recover old scores

$scoreboard players operation @s ne_killcd = $(name) ne_killcd
$scoreboard players operation @s ne_points = $(name) ne_points
$scoreboard players operation @s ne_finish = $(name) ne_finish

$scoreboard players reset $(name) ne_killcd
$scoreboard players reset $(name) ne_points
$scoreboard players reset $(name) ne_finish