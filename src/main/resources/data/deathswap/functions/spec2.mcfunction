# 观战系统
execute if entity @e[tag=game_core,tag=!ingame] run tp @a[tag=testing,gamemode=spectator] 0 -32 0
execute if entity @e[tag=game_core,tag=!ingame] run gamemode adventure @a[tag=testing,gamemode=spectator]