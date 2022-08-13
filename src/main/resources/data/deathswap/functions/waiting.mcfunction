#进入等待房间
execute if entity @e[tag=game_core,tag=ingame] run tellraw @s [{"text":"[!]本局游戏已经开始，请等待下局！如果你想观战的话可以右键下方的观战木牌","color":"red","bold":true,"italic":false}]
execute if entity @e[tag=game_core,tag=!ingame] run tag @s add waiting
execute if entity @e[tag=game_core,tag=!ingame] run tp @s 0 221 0 -90 0
execute if entity @e[tag=game_core,tag=!ingame] run tellraw @s [{"text":"[!]你已经成功进入下局游戏等待名单！","color":"green","bold":true,"italic":false}]