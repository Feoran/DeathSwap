
execute if entity @e[tag=game_core,scores={ds_mian_particle=1}] run execute if block 32 -31 3 minecraft:polished_blackstone_button[powered=true] run scoreboard players set @e[tag=game_core] ds_mian_particle 0
execute if entity @e[tag=game_core,scores={ds_mian_particle=0}] run execute if block 32 -31 3 minecraft:polished_blackstone_button[powered=true] run setblock 32 -31 3 minecraft:polished_blackstone_button[powered=false,facing=west] replace
execute if entity @e[tag=game_core,scores={ds_mian_particle=0}] run data modify entity @e[tag=stand_mian_particle,limit=1] CustomName set value '[{"text":"大厅粒子效果: ","color":"dark_aqua","italic":false},{"text":"关闭","color":"red","italic":false}]'


