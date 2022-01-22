say Next round
gamemode creative @a[tag=game_player]
execute as @a[tag=game_player] run execute at @s run tp @s ~22 ~ ~22
execute at @e[tag=game] run summon armor_stand ~22 -50 ~22 {Tags:[game_overflow], Marker:1b, NoGravity:1b}

execute as @e[tag=game_overflow] run execute at @s run execute as @e[dx=198,dy=1000,dz=198,tag=game_player] run tag @s add game_player_dont_tp
execute as @e[tag=!game_player_dont_tp] run execute as @s[tag=game_player] at @s run tp ~-198 ~ ~
execute as @e[tag=game_overflow] run kill @s
tag @e remove game_player_dont_tp

scoreboard players reset @e[tag=game_timer] timer
scoreboard players set @e[tag=game_timer_end] timer 6000
scoreboard players set @e[tag=game] status 1


scoreboard players set @e[tag=game,limit=1,scores={round=9}] status 3
execute as @e[tag=game,limit=1,scores={status=3}] run say 遊戲結束
execute as @e[tag=game,limit=1,scores={status=3}] run gamemode creative @a[tag=game_player]
execute as @e[tag=game,limit=1,scores={status=3}] run execute at @s run tp @a[tag=game_player] ~40 ~ ~40
execute as @e[tag=game,limit=1,scores={status=3}] run scoreboard objectives setdisplay sidebar

setblock 0 200 0 stone
setblock 0 201 0 oak_sign
effect give @e[tag=game_guess] invisibility 10000 1 true
execute as @e[tag=game_room_1] run execute as @s[tag=game_guess] at @s run summon shulker ~ ~ ~22 {Invulnerable:1b, Tags:[game_room_1, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute as @e[tag=game_room_1] run execute as @s[tag=game_guess] run data modify block 0 201 0 Text1 set value '{"selector":"@s"}'
execute as @e[tag=game_room_1] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute at @e[tag=game_worker, limit=1] run summon shulker ~22 ~ ~ {Invulnerable:1b, Tags:[game_room_2, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~44 ~ ~ {Invulnerable:1b, Tags:[game_room_3, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~66 ~ ~ {Invulnerable:1b, Tags:[game_room_4, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~88 ~ ~ {Invulnerable:1b, Tags:[game_room_5, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~110 ~ ~ {Invulnerable:1b, Tags:[game_room_6, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~132 ~ ~ {Invulnerable:1b, Tags:[game_room_7, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~154 ~ ~ {Invulnerable:1b, Tags:[game_room_8, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~176 ~ ~ {Invulnerable:1b, Tags:[game_room_9, game_obj, game_ans],NoAI:1b, DeathLootTable:''} 

tag @e remove game_guess

scoreboard players add @e[tag=game] round 1

clear @a[tag=game_player] name_tag
