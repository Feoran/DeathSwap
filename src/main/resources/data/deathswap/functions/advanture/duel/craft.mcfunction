advancement revoke @s only deathswap:item_duel
recipe take @s deathswap:duel
#计分项x1代表合成次数
execute as @s[scores={ds_x1=1..}] run give @s feather 1
execute as @s[scores={ds_x1=1..}] run give @s stick 1
execute as @s[scores={ds_x1=1..}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你的 \u00A7e命运之棒 \u00A7a合成次数已达上限\u00a7e(1/1)"]
execute as @s[scores={ds_x1=1..}] run clear @s stick{duel:1b} 1
execute as @s[scores={ds_x1=0}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e命运之棒(1/1)"]
execute as @s[scores={ds_x1=0}] run scoreboard players set @s ds_x1 1

