tellraw @a [{"text":"玩家","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=ingame]","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"在死亡交换中胜利！！！","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players add @a[tag=ingame] win 1
scoreboard players add @e[tag=game_core] playcount 1
scoreboard players add @a[tag=ingame] level 1
function deathswap:mian/reset
clear @a
execute as @a run function deathswap:level/level