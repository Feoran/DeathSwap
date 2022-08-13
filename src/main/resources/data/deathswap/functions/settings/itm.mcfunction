# 生成物品
kill @e[tag=stitem]
scoreboard players set @e[tag=game_core] ds_night 0
scoreboard players set @e[tag=game_core] ds_crazy 0
scoreboard players set @e[tag=game_core] ds_mian_particle 0
summon minecraft:item 32 -29.5 0 {Tags:["item_wait_c","stitem"],Item:{id:"minecraft:iron_sword",Count:1b},PickupDelay:32768,Age:-32768,Invulnerable:1b,NoGravity:1b}
summon minecraft:item 33 -29.5 3 {Tags:["item_mian_particle","stitem"],Item:{id:"minecraft:bubble_coral_block",Count:1b},PickupDelay:32768,Age:-32768,Invulnerable:1b,NoGravity:1b}
summon minecraft:item 33 -29.5 5 {Tags:["item_player_particle","stitem"],Item:{id:"minecraft:spectral_arrow",Count:1b},PickupDelay:32768,Age:-32768,Invulnerable:1b,NoGravity:1b}
summon minecraft:item 33 -29.5 -5 {Tags:["item_mode_night","stitem"],Item:{id:"minecraft:dark_oak_wood",Count:1b},PickupDelay:32768,Age:-32768,Invulnerable:1b,NoGravity:1b}
summon minecraft:item 33 -29.5 -3 {Tags:["item_mode_crazy","stitem"],Item:{id:"minecraft:diamond",Count:1b},PickupDelay:32768,Age:-32768,Invulnerable:1b,NoGravity:1b}
# 生成盔甲架
execute at @e[tag=item_wait_c] run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["stand_wait_c","stitem"],CustomName:'[{"text":"进入准备房间","color":"green","italic":false}]',NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,CustomNameVisible:1b}
execute at @e[tag=item_player_particle] run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["stand_player_particle","stitem"],CustomName:'[{"text":"玩家粒子效果设置","color":"dark_aqua","italic":false}]',NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,CustomNameVisible:1b}
execute at @e[tag=item_mode_night] run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["stand_mode_night","stitem"],CustomName:'[{"text":"永夜模式: ","color":"light_purple","italic":false},{"text":"关闭","color":"red","italic":false}]',NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,CustomNameVisible:1b}
execute at @e[tag=item_mode_crazy] run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["stand_mode_crazy","stitem"],CustomName:'[{"text":"疯狂模式: ","color":"light_purple","italic":false},{"text":"关闭","color":"red","italic":false}]',NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,CustomNameVisible:1b}
execute at @e[tag=item_mian_particle] run summon minecraft:armor_stand ~ ~-0.5 ~ {Tags:["stand_mian_particle","stitem"],CustomName:'[{"text":"大厅粒子效果: ","color":"dark_aqua","italic":false},{"text":"关闭","color":"red","italic":false}]',NoAI:1b,Invulnerable:1b,NoGravity:1b,Invisible:1,Small:1,CustomNameVisible:1b}







