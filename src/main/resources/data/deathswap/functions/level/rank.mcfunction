#检测条件 function deathswap:level/rank
tellraw @s [{"text":"[系统]","color":"dark_aqua","bold":true},{"text":"正在为您初始化玩家信息..","color":"red","bold":false}]
execute if entity @s run scoreboard players reset @s level
execute if entity @s run scoreboard players set @s level 1
execute if entity @s run scoreboard players set @s level0 1

function deathswap:level/level
spawnpoint @s 0 72 0
tp @s 0 72 0
