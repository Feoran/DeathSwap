tellraw @a[tag=ingame,scores={death=1}] [{"text":"[!]你已在本局游戏中失败！","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
spawnpoint @a[tag=ingame,scores={death=1}] 0 72 0
tag @a[tag=ingame,scores={death=1}] remove ingame
scoreboard players set @a[scores={death=1}] death 0
