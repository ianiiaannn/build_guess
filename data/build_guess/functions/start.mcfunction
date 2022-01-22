scoreboard players reset @e[tag=game_timer] timer
scoreboard players set @e[tag=game_timer_end] timer 6000
scoreboard objectives setdisplay sidebar timer
scoreboard players set @e[tag=game] status 1
scoreboard players set @e[tag=game] round 1
execute as @e[tag=game] run execute at @s run tp @e[tag=game_worker] ~23 ~-1 ~23

kill @e[tag=game_obj]

gamemode creative @a[tag=game_player]
gamemode spectator @a[tag=!game_player]
