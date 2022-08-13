execute if entity @e[tag=game_core,scores={ds_crazy=1}] run function deathswap:settings/d_crazy
execute unless entity @e[tag=game_core,scores={ds_crazy=1}] run function deathswap:settings/e_crazy
execute if entity @e[tag=game_core,scores={ds_night=1}] run function deathswap:settings/d_night
execute unless entity @e[tag=game_core,scores={ds_night=1}] run function deathswap:settings/e_night
execute if entity @e[tag=game_core,scores={ds_mian_particle=1}] run function deathswap:settings/d_mian_particle
execute unless entity @e[tag=game_core,scores={ds_mian_particle=1}] run function deathswap:settings/e_mian_particle

execute if entity @e[tag=game_core,scores={ds_crazy=1}] run execute if entity @e[tag=game_core,scores={ds_night=1}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:netherite_sword",Count:1b,tag:{RepairCost:1,Enchantments:[{lvl:3s, id:"minecraft:unbreaking"}]}}
execute if entity @e[tag=game_core,scores={ds_crazy=0}] run execute if entity @e[tag=game_core,scores={ds_night=1}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:golden_sword",Count:1b}
execute if entity @e[tag=game_core,scores={ds_crazy=1}] run execute if entity @e[tag=game_core,scores={ds_night=0}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:diamond_sword",Count:1b,tag:{RepairCost:1,Enchantments:[{lvl:3s, id:"minecraft:unbreaking"}]}}
execute if entity @e[tag=game_core,scores={ds_crazy=0}] run execute if entity @e[tag=game_core,scores={ds_night=0}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:iron_sword",Count:1b}

execute if entity @e[tag=game_core,scores={ds_night=1}] run execute if entity @e[tag=game_core,scores={ds_crazy=0}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:golden_sword",Count:1b}
execute if entity @e[tag=game_core,scores={ds_night=0}] run execute if entity @e[tag=game_core,scores={ds_crazy=1}] run data modify entity @e[tag=item_wait_c,limit=1] Item set value {id:"minecraft:diamond_sword",Count:1b,tag:{RepairCost:1,Enchantments:[{lvl:3s, id:"minecraft:unbreaking"}]}}

execute if entity @e[tag=game_core,scores={ds_mian_particle=0}] run data modify entity @e[tag=item_mian_particle,limit=1] Item set value {id:"minecraft:dead_bubble_coral_block",Count:1b}
execute if entity @e[tag=game_core,scores={ds_mian_particle=1}] run data modify entity @e[tag=item_mian_particle,limit=1] Item set value {id:"minecraft:bubble_coral_block",Count:1b}

execute if block 32 -31 0 minecraft:polished_blackstone_button[powered=true] run execute at @e[tag=item_wait_c,limit=1] run execute as @p run function deathswap:waiting
execute if block 32 -31 0 minecraft:polished_blackstone_button[powered=true] run setblock 32 -31 0 minecraft:polished_blackstone_button[powered=false,facing=west] replace






