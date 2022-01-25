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

setblock 0 200 0 stone
setblock 0 201 0 oak_sign
effect give @e[tag=game_ans] invisibility 10000 1 true


execute as @e[tag=game_room_1] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_1, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_1] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_1] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_2] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_2, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_2] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_2] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_3] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_3, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_3] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_3] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_4] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_4, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_4] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_4] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_5] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_5, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_5] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_5] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_6] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_6, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_6] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_6] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_7] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_7, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_7] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_7] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_8] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_8, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_8] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_8] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

execute as @e[tag=game_room_9] run execute as @s[tag=game_guess] at @s run summon shulker ~1 ~ ~22 {Invulnerable:1b, Tags:[game_room_9, game_obj, game_ans],NoAI:1b, DeathLootTable:'', Color:11b} 
execute as @e[tag=game_guess,tag=game_room_9] run data modify block 0 201 0 Text1 set from entity @s CustomName
execute as @e[tag=game_room_9] run execute as @s[tag=game_ans] at @s run data modify entity @s CustomName set from block 0 201 0 Text1

kill @e[tag=game_guess]

scoreboard players set @e[tag=game,limit=1,scores={round=5}] status 3
execute as @e[tag=game,limit=1,scores={status=3}] run say 遊戲結束
execute as @e[tag=game,limit=1,scores={status=3}] run gamemode creative @a[tag=game_player]
execute as @e[tag=game,limit=1,scores={status=3}] run execute at @s run tp @a[tag=game_player] ~40 ~ ~40
execute as @e[tag=game,limit=1,scores={status=3}] run scoreboard objectives setdisplay sidebar
execute as @e[tag=game,limit=1,scores={status=3}] run effect clear @e[tag=game_obj] invisibility
execute as @e[tag=game,limit=1,scores={status=3}] run tellraw @a "感謝遊玩！本專案 Github 連結："
execute as @e[tag=game,limit=1,scores={status=3}] run tellraw @a {"text": "https://github.com/ianiiaannn/build_guess","clickEvent":{"action":"open_url","value":"https://github.com/ianiiaannn/build_guess"}}

scoreboard players add @e[tag=game] round 1

clear @a[tag=game_player] name_tag
