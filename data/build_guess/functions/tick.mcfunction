execute as @e[tag=game] at @s run execute as @e[distance=..20,tag=!game_player] at @s if block ~ ~-1 ~ red_concrete run tag @s add game_player_tmp
execute as @a[tag=game_player_tmp] run say 加入遊戲。
execute as @a[tag=game_player_tmp] run tag @s add game_player
execute as @a[tag=game_player_tmp] run tag @s remove game_player_tmp

execute as @e[tag=game] at @s run execute as @e[distance=..20,tag=game_player] at @s if block ~ ~-1 ~ blue_concrete run tag @s add game_player_tmp
execute as @a[tag=game_player_tmp] run say 離開遊戲。
execute as @a[tag=game_player_tmp] run tag @s remove game_player
execute as @a[tag=game_player_tmp] run tag @s remove game_player_tmp

scoreboard players operation @e[tag=game_timer] timer += @e[tag=game_timer_one] timer

scoreboard players operation 剩餘時間 sidebar = @e[tag=game_timer_end,limit=1] timer
scoreboard players operation 剩餘時間 sidebar -= @e[tag=game_timer,limit=1] timer
scoreboard players operation 目前輪數 sidebar = @e[tag=game,limit=1] round
scoreboard players operation 目前狀態 sidebar = @e[tag=game,limit=1] status

execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=tnt] run kill @s 
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=tnt] run kill @s 
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=tnt_minecart] run kill @s 
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=tnt_minecart] run kill @s 
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=wither] run kill @s 
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=wither] run kill @s 
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s ignited set value false
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s ignited set value false
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s powered set value true
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s powered set value true
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s ExplosionRadius set value 0
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=creeper] run data modify entity @s ExplosionRadius set value 0
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=end_crystal] run kill @s 
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=end_crystal] run kill @s 
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=fireball] run kill @s 
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250, type=fireball] run kill @s 
execute as @e[tag=game,limit=1,scores={status=1}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250] run data modify entity @s NoAI set value true
execute as @e[tag=game,limit=1,scores={status=2}] run execute at @s run execute as @e[y=-60,dx=250,dy=500,dz=250] run data modify entity @s NoAI set value true


execute if score @e[tag=game_timer,limit=1] timer >= @e[tag=game_timer_end,limit=1] timer run execute if score @e[tag=game,limit=1] status matches 1 run function build_guess:buildtimesup
execute if score @e[tag=game_timer,limit=1] timer >= @e[tag=game_timer_end,limit=1] timer run execute if score @e[tag=game,limit=1] status matches 2 run function build_guess:guesstimeup
