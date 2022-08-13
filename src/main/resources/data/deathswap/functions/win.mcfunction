tellraw @a [{"text":"玩家","color":"gold","bold":true,"italic":false},{"selector":"@a[tag=ingame]","color":"red","bold":true,"italic":false},{"text":"在死亡交换中胜利！！！","color":"gold","bold":true,"italic":false}]
scoreboard players add @a[tag=ingame] ds_win 1
scoreboard players add @e[tag=game_core] ds_playcount 1
function deathswap:mian/reset
clear @a

scoreboard players add @a[tag=ingame] ds_xp 100
scoreboard players add @a[tag=ingame] ds_xp 10
tellraw @a[tag=ingame] ["\u00A73+100经验(游戏胜利)"]
tellraw @a[tag=ingame] ["\u00A73+10经验(完成一场游戏)"]
execute as @a run function deathswap:level/level