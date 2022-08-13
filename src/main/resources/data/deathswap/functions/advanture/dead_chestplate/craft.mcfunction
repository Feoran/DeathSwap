advancement revoke @s only deathswap:item_dead_chestplate
recipe take @s deathswap:dead_chestplate
#计分项x4代表合成次数
execute as @s[scores={ds_x4=2..}] run give @s bone 2
execute as @s[scores={ds_x4=2..}] run give @s iron_chestplate 1
execute as @s[scores={ds_x4=2..}] run give @s rotten_flesh 2
execute as @s[scores={ds_x4=2..}] run give @s iron_ingot 2
execute as @s[scores={ds_x4=2..}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你的 \u00A7e亡灵战甲 \u00A7a合成次数已达上限\u00a7e(2/2)"]
execute as @s[scores={ds_x4=2..}] run clear @s iron_chestplate{dead:1b} 1

execute as @s[scores={ds_x4=1}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e亡灵战甲(2/2)"]
execute as @s[scores={ds_x4=1}] run scoreboard players add @s ds_x4 1

execute as @s[scores={ds_x4=0}] run tellraw @s ["\u00A7c[死亡交换]\u00A7a你合成了 \u00A7e亡灵战甲(1/2)"]
execute as @s[scores={ds_x4=0}] run scoreboard players add @s ds_x4 1

