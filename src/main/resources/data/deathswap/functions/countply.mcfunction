#检测等待人数
scoreboard players set @e[tag=game_core] ds_ply 0
execute as @a[tag=waiting] run scoreboard players add @e[tag=game_core] ds_ply 1
scoreboard players operation @e[tag=game_core] ds_ply_t = @e[tag=game_core] ds_ply