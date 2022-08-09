# 重置随机时间
scoreboard players set @e[tag=game_core,tag=ingame] time 0
scoreboard players set @e[tag=game_core,tag=ingame] timetick 0
function deathswap:randtime
title @a[tag=ingame] title [{"text":"发生交换！","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]