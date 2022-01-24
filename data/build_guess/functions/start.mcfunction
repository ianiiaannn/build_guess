scoreboard players reset @e[tag=game_timer] timer
scoreboard players set @e[tag=game_timer_end] timer 6000
scoreboard objectives setdisplay sidebar sidebar
scoreboard players set @e[tag=game] status 1
scoreboard players set @e[tag=game] round 1
execute as @e[tag=game] run execute at @s run tp @e[tag=game_worker] ~23 ~-1 ~23

kill @e[tag=game_obj]

difficulty peaceful
effect give @a[tag=game_player] resistance 100000 6 true

gamemode creative @a[tag=game_player]
gamemode spectator @a[tag=!game_player]
