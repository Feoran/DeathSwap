# 开始游戏失败
tag @e[tag=game_core,tag=ready] remove ready
scoreboard players set @e[tag=game_core] time 0
title @a title [{"text":"游戏开始失败！","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=game_core,tag=ingame] run tellraw @s [{"text":"中途有人退出，导致人数不够，停止计时！想开始游戏请重新点击木牌","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]