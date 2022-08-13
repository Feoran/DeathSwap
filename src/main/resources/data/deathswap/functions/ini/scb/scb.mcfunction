scoreboard objectives add ds_game dummy
scoreboard objectives add ds_death deathCount ["死亡"]
scoreboard objectives add ds_color dummy
scoreboard objectives add ds_unswap dummy
scoreboard objectives add ds_color1 dummy
scoreboard objectives add ds_win dummy ["胜场数"]
scoreboard objectives add ds_color dummy
scoreboard objectives add ds_restply_t dummy
scoreboard objectives add ds_restply dummy
scoreboard objectives add ds_playcount dummy
scoreboard objectives add ds_level dummy
scoreboard objectives add ds_night dummy
scoreboard objectives add ds_ply_t dummy
scoreboard objectives add ds_modint dummy
scoreboard objectives add ds_timetips dummy
scoreboard objectives add ds_timetips0 dummy
scoreboard objectives add ds_outtips dummy
scoreboard objectives add ds_math dummy
scoreboard objectives add ds_outtips0 dummy
scoreboard objectives add ds_crazy dummy
scoreboard objectives add ds_time dummy
scoreboard objectives add ds_ply dummy
scoreboard objectives add ds_x1 dummy
scoreboard objectives add ds_x2 dummy
scoreboard objectives add ds_x3 dummy
scoreboard objectives add ds_x4 dummy
scoreboard objectives add ds_x5 dummy
scoreboard objectives add ds_xp dummy
scoreboard objectives add ds_p dummy
scoreboard objectives add ds_stat trigger
scoreboard objectives add ds_random dummy
scoreboard objectives add ds_duel_stick dummy
scoreboard objectives add ds_outtips dummy
scoreboard objectives add ds_level0 dummy
scoreboard objectives add ds_timetick dummy
scoreboard objectives add ds_tips0 minecraft.custom:minecraft.leave_game
scoreboard objectives add ds_offline_t dummy
scoreboard objectives add ds_randtime dummy
scoreboard objectives add ds_mian_particle dummy
scoreboard objectives add ds_heath health ["生命值"]
scoreboard objectives setdisplay belowName ds_win
scoreboard objectives setdisplay list ds_heath
scoreboard players set fp:max_random ds_math 500
scoreboard players set fp:min_random ds_math 60
bossbar add ds:offline_c [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"离线重连可用","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
bossbar set ds:offline_c max 3600
bossbar set ds:offline_c color yellow
tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"计分板就绪","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
function deathswap:ini/rlob/rlob



