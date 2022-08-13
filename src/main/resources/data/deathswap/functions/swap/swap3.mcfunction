# 3人交换
tag @a[tag=ingame,tag=!swapped,limit=3,sort=random] add onswap
tag @a[tag=onswap] add swapped
tag @a[tag=onswap,limit=1,sort=random] add onswap1
tag @a[tag=onswap,tag=!onswap1,limit=1,sort=random] add onswap2
tag @a[tag=onswap,tag=!onswap1,tag=!onswap2] add onswap3
execute as @a[tag=onswap1] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["toswap1"],CustomNameVisible:0b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoGravity:1b,Invisible:1,ShowArms:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute as @a[tag=onswap2] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["toswap2"],CustomNameVisible:0b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoGravity:1b,Invisible:1,ShowArms:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute as @a[tag=onswap3] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["toswap3"],CustomNameVisible:0b,NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,Silent:1b,NoGravity:1b,Invisible:1,ShowArms:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
tp @a[tag=onswap1] @e[tag=toswap2,limit=1]
tp @a[tag=onswap2] @e[tag=toswap3,limit=1]
tp @a[tag=onswap3] @e[tag=toswap1,limit=1]
kill @e[tag=toswap1]
kill @e[tag=toswap2]
kill @e[tag=toswap3]
tag @a[tag=onswap1] remove onswap1
tag @a[tag=onswap2] remove onswap2
tag @a[tag=onswap3] remove onswap3
tag @a[tag=onswap] remove onswap