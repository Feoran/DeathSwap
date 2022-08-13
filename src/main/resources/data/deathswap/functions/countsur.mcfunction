# 检测游戏中剩余幸存者个数并判断游戏是否结束
scoreboard players set @e[tag=game_core,tag=ingame] ds_restply 0
execute as @a[tag=ingame] run scoreboard players add @e[tag=game_core,tag=ingame] ds_restply 1
execute if score @e[tag=game_core,tag=ingame,limit=1] ds_restply < 之前正在游玩的玩家数量 ds_restply run execute unless entity @e[tag=offline_t] run scoreboard players set @e[tag=game_core,tag=ingame,limit=1] ds_offline_t 3600
execute if score @e[tag=game_core,tag=ingame,limit=1] ds_restply < 之前正在游玩的玩家数量 ds_restply run tag @e[tag=game_core] add offline_t
execute if entity @e[tag=offline_t] run scoreboard players remove @e[tag=game_core,tag=ingame,limit=1] ds_offline_t 1
scoreboard players operation @e[tag=game_core,tag=ingame] ds_restply_t = @e[tag=game_core,tag=ingame] ds_restply
execute unless entity @e[tag=offline_t] run execute if entity @e[tag=game_core,tag=ingame,scores={ds_restply_t=..1}] run function deathswap:win
execute unless entity @e[tag=game_core,scores={ds_offline_t=0..3600}] run scoreboard players operation 之前正在游玩的玩家数量 restply = @e[tag=game_core] restply
# 玩家掉线后游戏内玩家将会等待3600tick 3600tick后游戏胜负判断函数将会继续运行
bossbar set ds:offline_c players @a
execute if entity @e[tag=offline_t] run bossbar set ds:offline_c visible true
execute if entity @e[tag=offline_t] run execute store result bossbar ds:offline_c value run scoreboard players get @e[tag=game_core,tag=ingame,limit=1] ds_offline_t
execute unless entity @e[tag=offline_t] run scoreboard players operation 之前正在游玩的玩家数量 ds_restply = @e[tag=game_core] ds_restply
execute if entity @e[tag=offline_t,scores={ds_offline_t=..1}] run scoreboard players operation 之前正在游玩的玩家数量 ds_restply = @e[tag=game_core] ds_restply
execute if entity @e[tag=offline_t,scores={ds_offline_t=..1}] run scoreboard players reset @e[tag=offline_t,scores={ds_offline_t=..1}] ds_offline_t
execute unless entity @e[tag=offline_t] run scoreboard players reset @e[tag=game_core,tag=ingame,limit=1] offline_t
execute unless entity @e[tag=offline_t] run bossbar set ds:offline_c visible false
execute if score @e[tag=game_core,tag=ingame,limit=1] ds_restply = 之前正在游玩的玩家数量 ds_restply run tag @e[tag=game_core] remove offline_t





