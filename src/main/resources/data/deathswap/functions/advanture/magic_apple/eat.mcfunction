advancement revoke @s only deathswap:item_magic_apple_eat
summon armor_stand 0 88 0 {Tags:[random_100],NoGravity:1b,Invisible:1b}
loot replace entity @e[tag=random_100] weapon.mainhand loot deathswap:random/1_100
execute store result score @s random run data get entity @e[type=armor_stand,tag=random_100,limit=1] HandItems[0].tag.Damage
kill @e[tag=random_100]
effect give @s regeneration 10 1
execute if score @s ds_random matches 1..16 run effect give @s speed 30 1
execute if score @s ds_random matches 17..34 run effect give @s resistance 60
execute if score @s ds_random matches 35..53 run effect give @s strength 30
execute if score @s ds_random matches 54..70 run effect give @s saturation 200
execute if score @s ds_random matches 71..88 run effect give @s fire_resistance 60
execute if score @s ds_random matches 89..100 run effect give @s absorption 60 2
scoreboard players set @s ds_random 0