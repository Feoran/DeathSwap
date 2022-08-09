#换算20分为1秒
execute if entity @e[tag=game_core,tag=ready,scores={time=1..}] run scoreboard players add @e[tag=game_core,tag=ready] timetick 1
execute if entity @e[tag=game_core,tag=ready,scores={timetick=20..}] run scoreboard players remove @e[tag=game_core,tag=ready] time 1
execute if entity @e[tag=game_core,tag=ready,scores={timetick=20..}] run scoreboard players set @e[tag=game_core,tag=ready] timetick 0
scoreboard players add @e[tag=game_core,tag=ingame] timetick 1
execute if entity @e[tag=game_core,tag=ingame,scores={timetick=20..}] run scoreboard players add @e[tag=game_core,tag=ingame] time 1
execute if entity @e[tag=game_core,tag=ingame,scores={timetick=20..}] run scoreboard players set @e[tag=game_core,tag=ingame] timetick 0