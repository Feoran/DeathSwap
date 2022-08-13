tellraw @a[tag=ingame,scores={ds_death=1}] [{"text":"[!]你已在本局游戏中失败！","color":"red","bold":true,"italic":false}]
spawnpoint @a[tag=ingame,scores={ds_death=1}] 0 -31 0
tp @a[tag=ingame,scores={ds_death=1}] 0 -31 0
scoreboard players add @a[tag=ingame,scores={ds_death=1}] xp 50
scoreboard players add @a[tag=ingame,scores={ds_death=1}] xp 10
tellraw @a[tag=ingame,scores={ds_death=1}] ["\u00A73+50经验(虽败犹荣)"]
tellraw @a[tag=ingame,scores={ds_death=1}] ["\u00A73+10经验(完成一场游戏)"]
execute as @a[tag=ingame,scores={ds_death=1}] run scoreboard players remove 之前正在游玩的玩家数量 ds_restply 1
tag @a[tag=ingame,scores={ds_death=1}] remove ingame
scoreboard players set @a[scores={ds_death=1}] ds_death 0
execute as @a run function deathswap:level/level