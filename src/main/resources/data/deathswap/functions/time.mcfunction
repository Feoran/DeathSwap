#互换设置
execute if entity @e[tag=game_core,tag=ingame,scores={time=0}] run function deathswap:swap
#倒计时 count down
execute if entity @e[tag=game_core,tag=ready,scores={time=10,timetick=1}] run function deathswap:countdown/startcountdown10
execute if entity @e[tag=game_core,tag=ready,scores={time=9,timetick=1}] run function deathswap:countdown/startcountdown9
execute if entity @e[tag=game_core,tag=ready,scores={time=8,timetick=1}] run function deathswap:countdown/startcountdown8
execute if entity @e[tag=game_core,tag=ready,scores={time=7,timetick=1}] run function deathswap:countdown/startcountdown7
execute if entity @e[tag=game_core,tag=ready,scores={time=6,timetick=1}] run function deathswap:countdown/startcountdown6
execute if entity @e[tag=game_core,tag=ready,scores={time=5,timetick=1}] run function deathswap:countdown/startcountdown5
execute if entity @e[tag=game_core,tag=ready,scores={time=4,timetick=1}] run function deathswap:countdown/startcountdown4
execute if entity @e[tag=game_core,tag=ready,scores={time=3,timetick=1}] run function deathswap:countdown/startcountdown3
execute if entity @e[tag=game_core,tag=ready,scores={time=2,timetick=1}] run function deathswap:countdown/startcountdown2
execute if entity @e[tag=game_core,tag=ready,scores={time=1,timetick=1}] run function deathswap:countdown/startcountdown1
execute if entity @e[tag=game_core,tag=ready,scores={time=0}] run function deathswap:countdown/startcountdown
