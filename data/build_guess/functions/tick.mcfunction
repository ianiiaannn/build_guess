execute as @e[tag=game] at @s run execute as @e[distance=..20,tag=!game_player] at @s if block ~ ~-1 ~ red_concrete run tag @s add game_player_tmp
execute as @a[tag=game_player_tmp] run say 加入遊戲。
execute as @a[tag=game_player_tmp] run tag @s add game_player
execute as @a[tag=game_player_tmp] run tag @s remove game_player_tmp

execute as @e[tag=game] at @s run execute as @e[distance=..20,tag=game_player] at @s if block ~ ~-1 ~ blue_concrete run tag @s add game_player_tmp
execute as @a[tag=game_player_tmp] run say 離開遊戲。
execute as @a[tag=game_player_tmp] run tag @s remove game_player
execute as @a[tag=game_player_tmp] run tag @s remove game_player_tmp

scoreboard players operation @e[tag=game_timer] timer += @e[tag=game_timer_one] timer

execute if score @e[tag=game_timer,limit=1] timer >= @e[tag=game_timer_end,limit=1] timer run execute if score @e[tag=game,limit=1] status matches 1 run function build_guess:buildtimesup
execute if score @e[tag=game_timer,limit=1] timer >= @e[tag=game_timer_end,limit=1] timer run execute if score @e[tag=game,limit=1] status matches 2 run function build_guess:guesstimeup
