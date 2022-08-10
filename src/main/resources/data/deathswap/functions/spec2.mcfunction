# 观战系统
execute if entity @e[tag=game_core,tag=!ingame] run tp @a[gamemode=spectator] 0 -30 0
execute if entity @e[tag=game_core,tag=!ingame] run gamemode adventure @a[gamemode=spectator]