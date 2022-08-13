scoreboard players set p ds_xp 3750
scoreboard players set #10 ds_p 10
scoreboard players set #p1 ds_xp 1000
scoreboard players operation temp ds_xp = @s ds_xp
scoreboard players operation temp ds_xp *= #p1 ds_xp
execute store result storage ds:stat ds_p double 0.001 run scoreboard players operation temp ds_xp /= p ds_xp
execute store result score @s ds_p run data get storage ds:stat ds_p 100
execute if score @s ds_p matches 0..4 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7f■■■■■■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 5..9 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■\u00A7f■■■■■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 10..14 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■\u00A7f■■■■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 15..19 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■\u00A7f■■■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 20..24 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■\u00A7f■■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 25..29 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■\u00A7f■■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 30..34 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■\u00A7f■■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 35..39 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■\u00A7f■■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 40..44 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■\u00A7f■■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 45..49 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■\u00A7f■■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 50..54 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■\u00A7f■■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 55..59 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■\u00A7f■■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 60..64 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■\u00A7f■■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 65..69 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■\u00A7f■■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 70..74 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■\u00A7f■■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 75..79 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■■\u00A7f■■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 80..84 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■■■\u00A7f■■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 85..89 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■■■■\u00A7f■■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 90..94 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■■■■■\u00A7f■■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]

execute if score @s ds_p matches 95..99 run tellraw @s ["\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------","\n\n","                  ",{"score":{"objective":"ds_level0","name":"@s"},"color":"aqua","bold":false,"italic":false}," \u00A7a级","\n\n      \u00A7a升级进度:   ",{"score":{"objective":"ds_p","name":"@s"},"color":"aqua","bold":false,"italic":false},"%\n","     \u00A7b■■■■■■■■■■■■■■■■■■■\u00A7f■","\n     ",{"score":{"objective":"ds_xp","name":"@s"},"color":"aqua","bold":false,"italic":false},"                        \u00A7b100","\n\n\u00A7f------------\u00A7a\u00A7l升级\u00A7r\u00A7f------------"]