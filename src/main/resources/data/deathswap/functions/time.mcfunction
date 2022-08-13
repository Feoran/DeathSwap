#互换设置
execute if entity @e[tag=game_core,tag=ingame,scores={ds_time=0}] run function deathswap:swap
#倒计时 count down
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=10,ds_timetick=1}] run function deathswap:countdown/startcountdown10
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=9,ds_timetick=1}] run function deathswap:countdown/startcountdown9
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=8,ds_timetick=1}] run function deathswap:countdown/startcountdown8
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=7,ds_timetick=1}] run function deathswap:countdown/startcountdown7
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=6,ds_timetick=1}] run function deathswap:countdown/startcountdown6
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=5,ds_timetick=1}] run function deathswap:countdown/startcountdown5
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=4,ds_timetick=1}] run function deathswap:countdown/startcountdown4
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=3,ds_timetick=1}] run function deathswap:countdown/startcountdown3
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=2,ds_timetick=1}] run function deathswap:countdown/startcountdown2
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=1,ds_timetick=1}] run function deathswap:countdown/startcountdown1
execute if entity @e[tag=game_core,tag=ready,scores={ds_time=0}] run function deathswap:countdown/startcountdown
