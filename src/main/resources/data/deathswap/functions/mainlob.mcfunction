#在大厅中的默认效果
tag @a[x=0,y=-32,z=0,dx=4,dy=4,dz=4,tag=!inlob] add inlob
tag @a[x=0,y=-32,z=0,dx=4,dy=4,dz=4,tag=waiting] remove waiting
effect give @a[tag=inlob] minecraft:instant_health 1000000 100 true
effect give @a[tag=inlob] minecraft:resistance 1000000 100 true
effect give @a[tag=inlob] minecraft:saturation 1000000 100 true
gamemode adventure @a[tag=inlob,gamemode=survival]