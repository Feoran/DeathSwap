execute if entity @e[tag=game_core,scores={ds_night=0}] run execute if block 32 -31 -5 minecraft:polished_blackstone_button[powered=true] run scoreboard players set @e[tag=game_core,scores={ds_night=0}] ds_night 1
execute if entity @e[tag=game_core,scores={ds_night=1}] run execute if block 32 -31 -5 minecraft:polished_blackstone_button[powered=true] run setblock 32 -31 -5 minecraft:polished_blackstone_button[powered=false,facing=west] replace
execute if entity @e[tag=game_core,scores={ds_night=1}] run data modify entity @e[tag=item_mode_night,limit=1] Item set value {id:"minecraft:dark_oak_wood",Count:1b,tag:{RepairCost:1,Enchantments:[{lvl:3s, id:"minecraft:unbreaking"}]}}
execute if entity @e[tag=game_core,scores={ds_night=1}] run data modify entity @e[tag=stand_mode_night,limit=1] CustomName set value '[{"text":"永夜模式: ","color":"light_purple","italic":false},{"text":"开启","color":"green","italic":false}]'




