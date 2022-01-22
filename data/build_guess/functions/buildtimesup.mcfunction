say tiems up
gamemode adventure @a[tag=game_player]
execute as @a[tag=game_player] run execute at @s run tp @s ~22 ~ ~
execute at @e[tag=game] run summon armor_stand ~22 -50 ~22 {Tags:[game_overflow], Marker:1b, NoGravity:1b}

execute as @e[tag=game_overflow] run execute at @s run say @s
execute as @e[tag=game_overflow] run execute at @s run execute as @e[dx=176,dy=1000,dz=176,tag=game_player] run tag @s add game_player_dont_tp
execute as @e[tag=!game_player_dont_tp] run execute as @s[tag=game_player] at @s run tp ~-176 ~ ~
execute as @e[tag=game_overflow] run kill @s
tag @e remove game_player_dont_tp

scoreboard players reset @e[tag=game_timer] timer
scoreboard players set @e[tag=game_timer_end] timer 1000
scoreboard players set @e[tag=game] status 2
