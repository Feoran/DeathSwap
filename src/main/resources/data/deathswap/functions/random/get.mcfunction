scoreboard players set fp:max_random math 300
scoreboard players set fp:min_random math 60
#parent random number
summon marker 0 88 0 {Tags:[random_dummy]}
execute store result score fp:parent_random math run data get entity @e[tag=random_dummy,limit=1,sort=random] UUID[0]
kill @e[tag=random_dummy]

#limit
scoreboard players operation fp:result_random math = fp:max_random math
scoreboard players operation fp:diffence_random math = fp:parent_random math
scoreboard players operation fp:mod_random math = fp:max_random math
scoreboard players operation fp:mod_random math -= fp:min_random math
scoreboard players operation fp:diffence_random math %= fp:mod_random math
scoreboard players operation fp:result_random math -= fp:diffence_random math

scoreboard players operation @e[tag=game_core] randtime = fp:result_random math
#debug output
