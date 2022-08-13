# 交换核心算法
scoreboard players set @e[tag=game_core,tag=ingame] unswap 0
execute as @a[tag=ingame,tag=!swapped] run scoreboard players add @e[tag=game_core,tag=ingame] unswap 1
execute if entity @e[tag=game_core,tag=ingame,scores={unswap=4..}] run function deathswap:swap/swap2
execute if entity @e[tag=game_core,tag=ingame,scores={unswap=3}] run function deathswap:swap/swap3
execute if entity @e[tag=game_core,tag=ingame,scores={unswap=2}] run function deathswap:swap/swap2
scoreboard players set @e[tag=game_core,tag=ingame] unswap 0
execute as @a[tag=ingame,tag=!swapped] run scoreboard players add @e[tag=game_core,tag=ingame] unswap 1
execute if entity @e[tag=game_core,tag=ingame,scores={unswap=1..}] run function deathswap:swap/swap
execute if entity @a[tag=swapped] run tag @a[tag=swapped] remove swapped