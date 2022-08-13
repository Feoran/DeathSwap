#标签添加
tag @s add duel
tag @r[tag=!duel] add duel_1
execute as @s at @s run playsound minecraft:entity.ender_dragon.ambient ambient @s ~ ~ ~
execute as @a[tag=duel_1] at @s run playsound minecraft:entity.ender_dragon.ambient ambient @s ~ ~ ~
#游戏内提示
tellraw @s ["\u00A7f------------\u00A7c\u00A7l决斗\u00A7r\u00A7f------------","\n\n","        \u00A7a对手 \u00A7f- ",{"selector":"@r[tag=duel_1]","color":"yellow","bold":false},"\n","        \u00A7a决斗时间 \u00A7f- \u00A7e 45秒","\n\n","  \u00A7c如果双方没有在决斗时间内分出胜负","\n","         \u00A7c则双方都将死亡!","\n\n","\u00A7f------------\u00A7c\u00A7l决斗\u00A7r\u00A7f------------"]
tellraw @a[tag=duel_1] ["\u00A7f------------\u00A7c\u00A7l决斗\u00A7r\u00A7f------------","\n\n","        \u00A7a对手 \u00A7f- ",{"selector":"@r[tag=duel]","color":"yellow","bold":false},"\n","        \u00A7a决斗时间 \u00A7f- \u00A7e 45秒","\n\n","  \u00A7c如果双方没有在决斗时间内分出胜负","\n","         \u00A7c则双方都将死亡!","\n\n","\u00A7f------------\u00A7c\u00A7l决斗\u00A7r\u00A7f------------"]
clear @s stick{duel:1b} 1
scoreboard players set @a ds_duel_stick -1
scoreboard players set @s ds_duel_stick 0