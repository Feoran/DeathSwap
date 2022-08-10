#大厅
tp @a[scores={level0=1..}] 0.999 -31 0.999
spawnpoint @a[scores={level0=1..}] 0 -31 0
#重置
scoreboard players set @a death 0
kill @e[tag=toswap1]
kill @e[tag=toswap2]
kill @e[tag=toswap3]
tag @a[tag=onswap1] remove onswap1
tag @a[tag=onswap2] remove onswap2
tag @a[tag=onswap3] remove onswap3
tag @a[tag=onswap] remove onswap
tag @e remove ingame
tag @a remove waiting
scoreboard players set @e[tag=game_core] time 0
scoreboard players set @e[tag=game_core] game 0
scoreboard players set @e[tag=game_core] timetick 0
scoreboard players set @e[tag=game_core] restply 0
scoreboard players set @e[tag=game_core] randtime 0
scoreboard players set @e[tag=game_core] unswap 0
scoreboard players set @e[tag=game_core] modint 220
gamemode adventure @a
clear @a
xp set @a 0 levels
xp set @a 0 points
scoreboard players reset @a health
scoreboard objectives setdisplay sidebar De
