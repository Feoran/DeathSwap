tag @e[tag=game_core] remove ready
tag @e[tag=game_core] add ingame
tag @a[tag=waiting] add ingame
tag @a[tag=waiting] remove inlob
tag @a[tag=waiting] remove waiting
gamemode survival @a[tag=ingame]
scoreboard players set @e[tag=game_core] time 0
function deathswap:randtime
execute as @a[tag=ingame] run spreadplayers 100 100 10000 10000 false @s
scoreboard objectives setdisplay sidebar health
effect clear @a[tag=ingame]
tellraw @a[tag=ingame] [{"text":"[!]小心生存，你随时都有可能与对手互换位置！","color":"gold","bold":true,"italic":false}]
execute if entity @e[tag=game_core,scores={crazy=1}] run loot give @a[tag=ingame] loot minecraft:chests/end_city_treasure
execute if entity @e[tag=game_core,scores={crazy=1}] run loot give @a[tag=ingame] loot minecraft:chests/end_city_treasure
execute if entity @e[tag=game_core,scores={crazy=1}] run tellraw @a[tag=ingame] [{"text":"[!]疯狂模式下，你的对手可能获取比你更好的强力装备！","color":"red","bold":true,"italic":false}]
execute if entity @e[tag=game_core,scores={night=1}] run tellraw @a[tag=ingame] [{"text":"[!]永夜模式下，怪物将会不受限制的生成！","color":"red","bold":true,"italic":false}]