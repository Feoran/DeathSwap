advancement revoke @s only deathswap:item_resistance_potion
recipe take @s deathswap:resistance_potion
#计分项x2代表合成次数
execute as @s[scores={ds_x2=2..}] run give @s iron_block 1
execute as @s[scores={ds_x2=2..}] run give @s cactus 1
execute as @s[scores={ds_x2=2..}] run give @s glass_bottle 1
execute as @s[scores={ds_x2=2..}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你的 \u00A7e坚韧药水 \u00A7a合成次数已达上限\u00a7e(2/2)"]
execute as @s[scores={ds_x2=2..}] run clear @s potion{resistance:1b} 1
execute as @s[scores={ds_x2=1}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e坚韧药水(2/2)"]
execute as @s[scores={ds_x2=1}] run scoreboard players add @s ds_x2 1
execute as @s[scores={ds_x2=0}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e坚韧药水(1/2)"]
execute as @s[scores={ds_x2=0}] run scoreboard players add @s ds_x2 1

