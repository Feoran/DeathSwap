execute if block 32 -31 -3 minecraft:polished_blackstone_button[powered=true] run scoreboard players set @e[tag=game_core,scores={ds_crazy=1}] ds_crazy 0
execute if entity @e[tag=game_core,scores={ds_crazy=0}] run execute if block 32 -31 -3 minecraft:polished_blackstone_button[powered=true] run setblock 32 -31 -3 minecraft:polished_blackstone_button[powered=false,facing=west] replace
execute if entity @e[tag=game_core,scores={ds_crazy=0}] run data modify entity @e[tag=item_mode_crazy,limit=1] Item set value {id:"minecraft:diamond",Count:1b}
execute if entity @e[tag=game_core,scores={ds_crazy=0}] run data modify entity @e[tag=stand_mode_crazy,limit=1] CustomName set value '[{"text":"疯狂模式: ","color":"light_purple","italic":false},{"text":"关闭","color":"red","italic":false}]'

