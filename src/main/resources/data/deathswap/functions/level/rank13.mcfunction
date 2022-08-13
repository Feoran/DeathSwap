scoreboard players set @s ds_level0 14
team join rank2_3 @s
scoreboard players set @s ds_level 26
scoreboard players set @s ds_xp 0
function deathswap:level/leveltip
execute as @s run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:2,Explosions:[{Trail:1b,Flicker:1b,Type:0,Colors:[I;16767032],FadeColors:[I;16741120]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
