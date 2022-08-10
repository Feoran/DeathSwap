#主大厅
effect give @a minecraft:resistance 10 5
tp @a 0 0 0
setworldspawn 0 0 0
setblock -46 -33 -46 minecraft:structure_block{mirror:"NONE",powered:0b,name:"deathswap:mianlobby1",rotation:"NONE",mode:"LOAD",id: "minecraft:structure_block",metadata:"",ignoreEntities:1b}
setblock -46 -33 1 minecraft:structure_block{mirror:"NONE",powered:0b,name:"deathswap:mianlobby2",rotation:"NONE",mode:"LOAD",id: "minecraft:structure_block",metadata:"",ignoreEntities:1b}
setblock 1 -33 1 minecraft:structure_block{mirror:"NONE",powered:0b,name:"deathswap:mianlobby3",rotation:"NONE",mode:"LOAD",id: "minecraft:structure_block",metadata:"",ignoreEntities:1b}
setblock 1 -33 -46 minecraft:structure_block{mirror:"NONE",powered:0b,name:"deathswap:mianlobby4",rotation:"NONE",mode:"LOAD",id: "minecraft:structure_block",metadata:"",ignoreEntities:1b}
setblock -46 -33 -45 minecraft:redstone_block
setblock -46 -33 2 minecraft:redstone_block
setblock 1 -33 2 minecraft:redstone_block
setblock 1 -33 -45 minecraft:redstone_block

tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"大厅生成完毕","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
#等待大厅
setblock -3 218 -3 minecraft:structure_block{mirror:"NONE",powered:0b,name:"deathswap:mian",rotation:"NONE",mode:"LOAD",id: "minecraft:structure_block",metadata:"",ignoreEntities:1b}
setblock -3 219 -3 minecraft:redstone_block
summon minecraft:armor_stand 3 220 0 {CustomName:"[{\"text\":\"[游戏核心运行中]\",\"color\":\"green\",\"bold\":true,\"italic\":false}]",Tags:["game_core"],CustomNameVisible:1b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,Invisible:1,Small:1,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"等待房间生成完毕","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
gamerule spawnRadius 1
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule disableElytraMovementCheck true
tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"规则已经设置完成","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a at @a run function deathswap:rank
effect clear @a
execute as @a at @a run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{tag:{Fireworks:{Flight:2,Explosions:[{Trail:1b,Flicker:1b,Type:0,Colors:[I;16767032],FadeColors:[I;16741120]}]}},id:"minecraft:firework_rocket",Count:1},Life:0,LifeTime:20}
function deathswap:ini/systips
scoreboard objectives remove installtips
tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"安装完成！现在可以开始游戏了。","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]