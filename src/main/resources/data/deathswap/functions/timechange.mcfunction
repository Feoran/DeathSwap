#换算20分为1秒
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=1..}] run scoreboard players add @e[tag=game_core,tag=ready] ds_timetick 1
execute if entity @e[tag=game_core,tag=ready,scores={ds_timetick=20..}] run scoreboard players remove @e[tag=game_core,tag=ready] ds_time 1
execute if entity @e[tag=game_core,tag=ready,scores={ds_timetick=20..}] run scoreboard players set @e[tag=game_core,tag=ready] ds_timetick 0
scoreboard players add @e[tag=game_core,tag=ingame] ds_timetick 1
execute if entity @e[tag=game_core,tag=ingame,scores={ds_timetick=20..}] run scoreboard players add @e[tag=game_core,tag=ingame] ds_time 1
execute if entity @e[tag=game_core,tag=ingame,scores={ds_timetick=20..}] run scoreboard players set @e[tag=game_core,tag=ingame] ds_timetick 0