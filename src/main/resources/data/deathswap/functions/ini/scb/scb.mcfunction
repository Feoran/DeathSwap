scoreboard objectives add game dummy
scoreboard objectives add death deathCount ["死亡"]
scoreboard objectives add color dummy
scoreboard objectives add unswap dummy
scoreboard objectives add color1 dummy
scoreboard objectives add win dummy ["胜场数"]
scoreboard objectives add color dummy
scoreboard objectives add restply_t dummy
scoreboard objectives add restply dummy
scoreboard objectives add playcount dummy
scoreboard objectives add level dummy
scoreboard objectives add night dummy
scoreboard objectives add ply_t dummy
scoreboard objectives add modint dummy
scoreboard objectives add timetips dummy
scoreboard objectives add timetips0 dummy
scoreboard objectives add outtips dummy
scoreboard objectives add math dummy
scoreboard objectives add outtips0 dummy
scoreboard objectives add crazy dummy
scoreboard objectives add time dummy
scoreboard objectives add ply dummy
scoreboard objectives add outtips dummy
scoreboard objectives add level0 dummy
scoreboard objectives add timetick dummy
scoreboard objectives add tips0 minecraft.custom:minecraft.leave_game
scoreboard objectives add offline_t dummy
scoreboard objectives add randtime dummy
scoreboard objectives add De dummy [{"text":"[Game]","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard objectives add heath health ["生命值"]
scoreboard objectives setdisplay belowName win
scoreboard objectives setdisplay list heath
scoreboard objectives setdisplay sidebar De 
bossbar add ds:offline_c [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"离线重连可用","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
bossbar set ds:offline_c max 3600
bossbar set ds:offline_c color yellow
tellraw @a [{"text":"[INFO]","color":"dark_gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"计分板就绪","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
function deathswap:ini/rlob/rlob



