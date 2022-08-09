# 检测游戏中剩余幸存者个数并判断游戏是否结束
scoreboard players set @e[tag=game_core,tag=ingame] restply 0
execute as @a[tag=ingame] run scoreboard players add @e[tag=game_core,tag=ingame] restply 1
execute if score @e[tag=game_core,tag=ingame,limit=1] restply < 之前正在游玩的玩家数量 restply run execute unless entity @e[tag=offline_t] run scoreboard players set @e[tag=game_core,tag=ingame,limit=1] offline_t 3600
execute if score @e[tag=game_core,tag=ingame,limit=1] restply < 之前正在游玩的玩家数量 restply run tag @e[tag=game_core] add offline_t
execute if entity @e[tag=offline_t] run scoreboard players remove @e[tag=game_core,tag=ingame,limit=1] offline_t 1
scoreboard players operation @e[tag=game_core,tag=ingame] restply_t = @e[tag=game_core,tag=ingame] restply
execute unless entity @e[tag=offline_t] run execute if entity @e[tag=game_core,tag=ingame,scores={restply_t=..1}] run function deathswap:win
execute unless entity @e[tag=game_core,scores={offline_t=..3600}] run scoreboard players operation 之前正在游玩的玩家数量 restply = @e[tag=game_core] restply
# 玩家掉线后游戏内玩家将会等待3600tick 3600tick后游戏胜负判断函数将会继续运行
bossbar set ds:offline_c players @a
execute if entity @e[tag=offline_t] run bossbar set ds:offline_c visible true
execute if entity @e[tag=offline_t] run execute store result bossbar ds:offline_c value run scoreboard players get @e[tag=game_core,tag=ingame,limit=1] offline_t
execute unless entity @e[tag=offline_t] run scoreboard players operation 之前正在游玩的玩家数量 restply = @e[tag=game_core] restply
execute if entity @e[tag=offline_t,scores={offline_t=..1}] run scoreboard players operation 之前正在游玩的玩家数量 restply = @e[tag=game_core] restply
execute unless entity @e[tag=offline_t] run scoreboard players reset @e[tag=game_core,tag=ingame,limit=1] offline_t
execute unless entity @e[tag=offline_t] run bossbar set ds:offline_c visible false
execute if score @e[tag=game_core,tag=ingame,limit=1] restply = 之前正在游玩的玩家数量 restply run tag @e[tag=game_core] remove offline_t





