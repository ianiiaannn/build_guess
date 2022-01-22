scoreboard players reset @e[tag=game_timer] timer
scoreboard players add @e[tag=game_timer_end] timer 6000
scoreboard objectives setdisplay sidebar timer
scoreboard players set @e[tag=game] status 1

gamemode creative @a[tag=game_player]
gamemode spectator @a[tag=!game_player]
