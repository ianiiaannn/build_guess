say tiems up
gamemode adventure @a[tag=game_player]
execute as @a[tag=game_player] run execute at @s run tp @s ~22 ~ ~
execute at @e[tag=game] run summon armor_stand ~22 -50 ~22 {Tags:[game_overflow], Marker:1b, NoGravity:1b}

execute as @e[tag=game_overflow] run execute at @s run execute as @e[dx=198,dy=1000,dz=198,tag=game_player] run tag @s add game_player_dont_tp
execute as @e[tag=!game_player_dont_tp] run execute as @s[tag=game_player] at @s run tp ~-198 ~ ~
execute as @e[tag=game_overflow] run kill @s
tag @e remove game_player_dont_tp

scoreboard players reset @e[tag=game_timer] timer
scoreboard players set @e[tag=game_timer_end] timer 2000
scoreboard players set @e[tag=game] status 2

execute at @e[tag=game_worker, limit=1] run summon shulker ~ ~ ~ {Invulnerable:1b, Tags:[game_room_1, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~22 ~ ~ {Invulnerable:1b, Tags:[game_room_2, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~44 ~ ~ {Invulnerable:1b, Tags:[game_room_3, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~66 ~ ~ {Invulnerable:1b, Tags:[game_room_4, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~88 ~ ~ {Invulnerable:1b, Tags:[game_room_5, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~110 ~ ~ {Invulnerable:1b, Tags:[game_room_6, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~132 ~ ~ {Invulnerable:1b, Tags:[game_room_7, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~154 ~ ~ {Invulnerable:1b, Tags:[game_room_8, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run summon shulker ~176 ~ ~ {Invulnerable:1b, Tags:[game_room_9, game_obj, game_guess],NoAI:1b, DeathLootTable:'', Color:14b} 
execute at @e[tag=game_worker, limit=1] run setblock ~1 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~23 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~45 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~67 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~89 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~111 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~133 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~155 ~-1 ~ anvil
execute at @e[tag=game_worker, limit=1] run setblock ~177 ~-1 ~ anvil

effect give @e[tag=game_ans] invisibility 10000 1 true
effect give @a[tag=game_player] resistance 100000 6 true
effect give @a[tag=game_player] saturation 100000 6 true

experience set @a[tag=game_player] 100 levels
give @a[tag=game_player] name_tag

execute as @e[tag=game_worker, limit=1] run execute at @s run tp @s ~ ~ ~22 
