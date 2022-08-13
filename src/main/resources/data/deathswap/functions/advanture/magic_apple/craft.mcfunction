advancement revoke @s only deathswap:item_magic_apple
recipe take @s deathswap:magic_apple
#计分项x3代表合成次数
execute as @s[scores={ds_x3=2..}] run give @s coal 2
execute as @s[scores={ds_x3=2..}] run give @s diamond 1
execute as @s[scores={ds_x3=2..}] run give @s apple 1
execute as @s[scores={ds_x3=2..}] run give @s redstone_block 1
execute as @s[scores={ds_x3=2..}] run give @s gold_ingot 2
execute as @s[scores={ds_x3=2..}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你的 \u00A7e神奇苹果 \u00A7a合成次数已达上限\u00a7e(2/2)"]
execute as @s[scores={ds_x3=2..}] run clear @s apple{magic:1b} 1

execute as @s[scores={ds_x3=1}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e神奇苹果(2/2)"]
execute as @s[scores={ds_x3=1}] run scoreboard players add @s ds_x3 1

execute as @s[scores={ds_x3=0}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e神奇苹果(1/2)"]
execute as @s[scores={ds_x3=0}] run scoreboard players add @s ds_x3 1
