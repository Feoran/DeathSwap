#大厅
tp @a[scores={ds_level0=1..}] 0.999 -31 0.999
spawnpoint @a[scores={ds_level0=1..}] 0 -31 0
#重置
scoreboard players set @a ds_death 0
kill @e[tag=toswap1]
kill @e[tag=toswap2]
kill @e[tag=toswap3]
tag @a[tag=onswap1] remove onswap1
tag @a[tag=onswap2] remove onswap2
tag @a[tag=onswap3] remove onswap3
tag @a[tag=onswap] remove onswap
tag @e remove ingame
tag @a remove waiting
scoreboard players set @a ds_x1 0
scoreboard players set @a ds_x2 0
scoreboard players set @a ds_x3 0
scoreboard players set @a ds_x4 0
scoreboard players set @a ds_x5 0
scoreboard players set @a ds_duel_stick 0
scoreboard players set @a ds_random 0
advancement revoke @a only deathswap:item_magic_apple_eat
advancement revoke @a only deathswap:item_dead_chestplate_hurt
scoreboard players set @e[tag=game_core] ds_time 0
scoreboard players set @e[tag=game_core] ds_game 0
scoreboard players set @e[tag=game_core] ds_timetick 0
scoreboard players set @e[tag=game_core] ds_restply 0
scoreboard players set @e[tag=game_core] ds_randtime 0
scoreboard players set @e[tag=game_core] ds_unswap 0
scoreboard players set @e[tag=game_core] ds_modint 220
gamemode adventure @a
clear @a
xp set @a 0 levels
xp set @a 0 points
scoreboard players reset @a ds_health
function deathswap:scoreboard/waiting
scoreboard objectives setdisplay sidebar ds_scoreboard
