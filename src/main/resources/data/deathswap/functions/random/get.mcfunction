#parent random number
summon marker 0 88 0 {Tags:[random_dummy]}
execute store result score fp:parent_random ds_math run data get entity @e[tag=random_dummy,limit=1,sort=random] UUID[0]
kill @e[tag=random_dummy]

#limit
scoreboard players operation fp:result_random ds_math = fp:max_random ds_math
scoreboard players operation fp:diffence_random ds_math = fp:parent_random ds_math
scoreboard players operation fp:mod_random ds_math = fp:max_random ds_math
scoreboard players operation fp:mod_random ds_math -= fp:min_random ds_math
scoreboard players operation fp:diffence_random ds_math %= fp:mod_random ds_math
scoreboard players operation fp:result_random ds_math -= fp:diffence_random ds_math

scoreboard players operation @e[tag=game_core] ds_randtime = fp:result_random ds_math
#debug output
