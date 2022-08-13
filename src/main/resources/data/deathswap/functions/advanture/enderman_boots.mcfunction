advancement revoke @s only deathswap:item_enderman_boots
recipe take @s deathswap:enderman_boots
#计分项x5代表合成次数
execute as @s[scores={ds_x5=2..}] run give @s iron_block 1
execute as @s[scores={ds_x5=2..}] run give @s ender_pearl 1
execute as @s[scores={ds_x5=2..}] run give @s feather 4
execute as @s[scores={ds_x5=2..}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你的 \u00A7e末影人之靴 \u00A7a合成次数已达上限\u00a7e(2/2)"]
execute as @s[scores={ds_x5=2..}] run clear @s diamond_boots{ender:1b} 1
execute as @s[scores={ds_x5=1}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e末影人之靴(2/2)"]
execute as @s[scores={ds_x5=1}] run scoreboard players add @s ds_x5 1
execute as @s[scores={ds_x5=0}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e末影人之靴(1/2)"]
execute as @s[scores={ds_x5=0}] run scoreboard players add @s ds_x5 1

