#检测条件 function deathswap:level/rank
tellraw @s [{"text":"[系统]","color":"dark_aqua","bold":true},{"text":"正在为您初始化玩家信息..","color":"red","bold":false}]
execute if entity @s run scoreboard players reset @s ds_level
execute if entity @s run scoreboard players set @s ds_level 1
execute if entity @s run scoreboard players set @s ds_level0 1
scoreboard players set @s ds_xp 0
function deathswap:level/level
spawnpoint @s 0 -31 0
tp @s 0 -31 0
execute as @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:2,Explosions:[{Trail:1b,Flicker:1b,Type:0,Colors:[I;16767032],FadeColors:[I;16741120]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
execute if entity @s[scores={ds_level0=1}] run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","          \u00A7a你成功升到了 ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   \u00A7b0%\n","     \u00A7f■■■■■■■■■■■■■■■■■■■■","\n     \u00A7b0                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]
