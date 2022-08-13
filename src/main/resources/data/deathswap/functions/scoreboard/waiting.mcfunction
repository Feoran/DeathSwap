scoreboard objectives remove ds_scoreboard
scoreboard objectives add ds_scoreboard dummy
scoreboard objectives modify ds_scoreboard displayname ["       \u00A7e\u00A7l死亡交换       "]
team add s1
team add s2
team add s3
team add s4
team add s5

team join s1 §w
team modify s1 prefix ["\u00A7f状态:等待中..."]
#队伍s2用于显示加入游戏的玩家数量
team join s2 §i
team modify s2 prefix ["\u00A7f玩家:\u00A7a0"]
#队伍s3用于显示永夜模式的开启状态
team join s3 §p
team modify s3 prefix ["\u00A7f永夜模式:\u00A7c关闭"]
#队伍s4用于显示疯狂模式的开启状态
team join s4 §j
team modify s4 prefix ["\u00A7f疯狂模式:\u00A7c关闭"]
team join s5 §z
team modify s5 prefix ["\u00A7eDeathSwap DataPack"]

scoreboard players set §q ds_scoreboard 9
scoreboard players set §w ds_scoreboard 8
scoreboard players set §t ds_scoreboard 7
scoreboard players set §i ds_scoreboard 6
scoreboard players set §o ds_scoreboard 5
scoreboard players set §p ds_scoreboard 4
scoreboard players set §j ds_scoreboard 3
scoreboard players set §m ds_scoreboard 2
scoreboard players set §z ds_scoreboard 1