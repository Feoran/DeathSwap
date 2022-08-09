# 读秒
function deathswap:time
# 实时监测幸存人数
execute if entity @e[tag=ingame] run function deathswap:countsur
# 实时监测准备人数
function deathswap:countply
# 大厅默认效果
function deathswap:mainlob
# 秒进制转换
function deathswap:timechange
# 等级
execute if entity @e[tag=game_core] run execute as @a run execute unless entity @s[scores={level0=1..}] run function deathswap:level/rank
execute as @a run function deathswap:level/lvlobby
execute as @a run function deathswap:level/level
# 检测玩家死亡
execute if entity @a[tag=ingame,scores={death=1..}] run function deathswap:lose
# 检测读秒过程中是否因玩家退出而人数不足
execute if entity @e[tag=game_core,tag=ready,scores={ply=..1}] run function deathswap:gamejoin/fail2
# 检测是否到达随机时间并进行交换
execute if score @e[tag=game_core,tag=ingame,limit=1] time >= @e[tag=game_core,tag=ingame,limit=1] randtime run function #deathswap:swap
# 右侧展示栏
scoreboard players operation [A]服务器游戏次数 De = @e[tag=game_core] playcount
scoreboard players operation [B]加入人数 De = @e[tag=game_core] ply_t
# 防止有人在观战模式离线后游戏结束又上线的bug
execute if entity @e[tag=game_core,tag=!ingame] run execute if entity @a[gamemode=spectator] run function deathswap:spec2
# 防止有人在开始游戏后离线 游戏结束又上线的bug
execute if entity @a[tag=ingame,scores={tips0=1..}] run execute if entity @e[tag=game_core,tag=!ingame] run execute as @a[tag=ingame,scores={outtips=1..}] run kill @s



# 游戏进行时的展示
execute if entity @e[tag=game_core,tag=ingame,scores={outtips=0}] run title @a actionbar [{"text":"当前还剩","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"restply_t","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"名幸存者，距离上次交换已过去","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"time","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"秒","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
# 特效侦测
execute as @a at @s run function deathswap:rank/tick
# 永夜模式
execute if entity @e[tag=game_core,scores={night=1}] run function deathswap:swap/night
# 疯狂模式 怪物增强WIP

# 公告
execute if entity @e[tag=game_core] run execute if entity @a[scores={tips0=1..}] run execute as @a[scores={tips0=1..}] run function deathswap:ini/systips

# 播报功能
execute if entity @e[tag=game_core,tag=ingame,scores={outtips=1}] run function deathswap:outtips
execute if entity @e[tag=game_core,tag=ingame,scores={outtips=1}] run title @a actionbar [{"text":"当前还剩","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"restply_t","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"aqua","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"名幸存者，距离交换还剩余","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"timetips0","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"秒","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
# 安装
execute unless entity @e[tag=game_core] run scoreboard objectives add installtips dummy
execute unless entity @e[tag=game_core] run execute unless entity @a[scores={installtips=1..}] run function deathswap:ini/installtips
