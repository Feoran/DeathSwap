# 读秒
function deathswap:time
# 实时监测幸存人数
execute if entity @e[tag=game_core] run function deathswap:countsur
# 实时监测准备人数
function deathswap:countply
# 大厅默认效果
function deathswap:mainlob
# 秒进制转换
function deathswap:timechange
# 等级
execute if entity @e[tag=game_core] run execute as @a run execute unless entity @s[scores={ds_level0=1..}] run function deathswap:level/rank
execute as @a run function deathswap:level/lvlobby
execute as @a run function deathswap:level/level
# 检测玩家死亡
execute if entity @a[tag=ingame,scores={ds_death=1..}] run function deathswap:lose
# 检测读秒过程中是否因玩家退出而人数不足
execute if entity @e[tag=game_core,tag=ready,scores={ds_ply=..1}] run function deathswap:gamejoin/fail2
# 检测是否到达随机时间并进行交换
execute if score @e[tag=game_core,tag=ingame,limit=1] time >= @e[tag=game_core,tag=ingame,limit=1] randtime run function #deathswap:swap
#记分板显示
execute as @e[tag=game_core,tag=!ingame] run function deathswap:scoreboard/player_counter
# 防止有人在观战模式离线后游戏结束又上线的bug
execute if entity @e[tag=game_core,tag=!ingame] run execute if entity @a[gamemode=spectator] run function deathswap:spec2
# 防止有人在开始游戏后离线 游戏结束又上线的bug
execute if entity @a[tag=ingame,scores={ds_tips0=1..}] run execute if entity @e[tag=game_core,tag=!ingame] run execute as @a[tag=ingame,scores={ds_outtips=1..}] run kill @s
# 防止大厅刷怪
kill @e[x=-46,y=-31,z=-46,dx=92,dy=31,dz=92,type=!minecraft:player,tag=!stitem,type=!minecraft:armor_stand]
# 游戏进行时的展示
execute if entity @e[tag=game_core,tag=ingame,scores={ds_outtips=0}] run title @a actionbar [{"text":"当前还剩","color":"green","bold":true,"italic":false},{"score":{"objective":"ds_restply_t","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"aqua","bold":true,"italic":false},{"text":"名幸存者，距离上次交换已过去","color":"green","bold":false,"italic":false},{"score":{"objective":"ds_time","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"red","bold":true,"italic":false},{"text":"秒","color":"green","bold":true,"italic":false}]
# 特效侦测
execute as @a at @s run function deathswap:rank/tick
# 永夜模式
execute if entity @e[tag=game_core,scores={ds_night=1}] run function deathswap:swap/night
# 疯狂模式 怪物增强WIP


#场景交互
execute unless entity @e[type=armor_stand,tag=ingame] run function deathswap:settings/tick
# 公告
execute if entity @e[tag=game_core] run execute if entity @a[scores={ds_tips0=1..}] run execute as @a[scores={ds_tips0=1..}] run function deathswap:ini/systips

# 播报功能
execute if entity @e[tag=game_core,tag=ingame,scores={ds_outtips=1}] run function deathswap:outtips
execute if entity @e[tag=game_core,tag=ingame,scores={ds_outtips=1}] run title @a actionbar [{"text":"当前还剩","color":"green","bold":false,"italic":false},{"score":{"objective":"ds_restply_t","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"aqua","bold":true,"italic":false},{"text":"名幸存者，距离交换还剩余","color":"green","bold":false,"italic":false},{"score":{"objective":"ds_timetips0","name":"@e[tag=game_core,tag=ingame,limit=1]"},"color":"red","bold":true,"italic":false},{"text":"秒","color":"green","bold":false,"italic":false}]
# 安装
execute unless entity @e[tag=game_core] run scoreboard objectives add ds_installtips dummy
execute unless entity @e[tag=game_core] run execute unless entity @a[scores={ds_installtips=1..}] run function deathswap:ini/installtips

# 手持命运之棒计时
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}}] run scoreboard players add @s ds_duel_stick 1
execute as @a[nbt=!{SelectedItem:{tag:{duel:1b}}}] run scoreboard players set @s ds_duel_stick 0
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={ds_duel_stick=1}] run tellraw @s ["\u00A7c[死亡交换] \u00A7e命运之棒 \u00A7a的 \u00A7e决斗 \u00A7a技能将在 \u00A7c5 \u00A7a秒后触发!"]
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={ds_duel_stick=20}] run tellraw @s ["\u00A7c[死亡交换] \u00A7e命运之棒 \u00A7a的 \u00A7e决斗 \u00A7a技能将在 \u00A7c4 \u00A7a秒后触发!"]
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={ds_duel_stick=40}] run tellraw @s ["\u00A7c[死亡交换] \u00A7e命运之棒 \u00A7a的 \u00A7e决斗 \u00A7a技能将在 \u00A7c3 \u00A7a秒后触发!"]
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={ds_duel_stick=60}] run tellraw @s ["\u00A7c[死亡交换] \u00A7e命运之棒 \u00A7a的 \u00A7e决斗 \u00A7a技能将在 \u00A7c2 \u00A7a秒后触发!"]
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={ds_duel_stick=80}] run tellraw @s ["\u00A7c[死亡交换] \u00A7e命运之棒 \u00A7a的 \u00A7e决斗 \u00A7a技能将在 \u00A7c1 \u00A7a秒后触发!"]

#执行对应函数
execute as @a[nbt={SelectedItem:{tag:{duel:1b}}},scores={duel_stick=100..}] run function deathswap:advanture/duel/pre
#疯狂模式显示
execute if entity @e[tag=game_core,scores={ds_crazy=1}] run team modify s4 prefix ["\u00A7f疯狂模式:\u00A7a开启"]
execute unless entity @e[tag=game_core,scores={ds_crazy=1}] run team modify s4 prefix ["\u00A7f疯狂模式:\u00A7c关闭"]
#永夜模式显示
execute if entity @e[tag=game_core,scores={ds_night=1}] run team modify s3 prefix ["\u00A7f永夜模式:\u00A7a开启"]
execute unless entity @e[tag=game_core,scores={ds_night=1}] run team modify s3 prefix ["\u00A7f永夜模式:\u00A7c关闭"]

execute if entity @e[tag=game_core,tag=ingame] run team modify s1 prefix ["\u00A7f状态:游戏已经开始"]
execute unless entity @e[tag=game_core,tag=ingame] run team modify s1 prefix ["\u00A7f状态:等待中..."]