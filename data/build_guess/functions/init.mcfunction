function build_guess:end
execute at @s run summon armor_stand ~ ~2 ~ {Marker:1b, Tags:[game], CustomName:'{"text":"你蓋我猜"}', CustomNameVisible:1b, Invisible:1b}
execute at @s run summon armor_stand ~ ~2 ~ {Marker:1b, Tags:[game_timer_one], CustomName:'{"text":"每 Tick 計時器改變量"}', Invisible:1b}
execute at @s run summon armor_stand ~ ~2 ~ {Marker:1b, Tags:[game_timer], CustomName:'{"text":"計時器"}', Invisible:1b}
execute at @s run summon armor_stand ~ ~2 ~ {Marker:1b, Tags:[game_timer_end], CustomName:'{"text":"終止時間"}', Invisible:1b}
execute at @s run summon armor_stand ~23 ~-1 ~23 {Marker:1b, Tags:[game_worker], CustomName:'{"text":"Worker"}', Invisible:1b}
execute as @e[tag=game] run say Initing rooms
execute at @e[tag=game] run fill ~10 ~-4 ~10 ~-10 ~-4 ~-10 quartz_block

execute at @e[tag=game] run fill ~11 ~-4 ~11 ~11 ~30 ~-11 purple_concrete
execute at @e[tag=game] run fill ~11 ~-4 ~-11 ~-11 ~30 ~-11 purple_concrete
execute at @e[tag=game] run fill ~-11 ~-4 ~-11 ~-11 ~30 ~11 purple_concrete
execute at @e[tag=game] run fill ~-11 ~-4 ~11 ~11 ~30 ~11 purple_concrete

execute at @e[tag=game] run fill ~8 ~-4 ~8 ~-8 ~-4 ~-8 grass_block


execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~22 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~44 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~66 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~88 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~110 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~132 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~154 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~176 ~-4 ~198 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~22 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~44 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~66 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~88 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~110 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~132 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~154 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~176 replace force
execute at @e[tag=game] run clone ~11 ~-4 ~11 ~-11 ~40 ~-11 ~198 ~-4 ~198 replace force

execute at @e[tag=game] run setblock ~ ~15 ~ command_block{Command:"function build_guess:start"}
execute at @e[tag=game] run setblock ~ ~16 ~ stone_pressure_plate
execute at @e[tag=game] run fill ~10 ~-4 ~10 ~-10 ~-4 ~-10 quartz_block
execute at @e[tag=game] run fill ~10 ~-4 ~10 ~7 ~-4 ~7 red_concrete
execute at @e[tag=game] run fill ~-10 ~-4 ~10 ~-7 ~-4 ~7 blue_concrete

scoreboard objectives add timer dummy
scoreboard objectives add status dummy
scoreboard objectives add round dummy
scoreboard players add @e[tag=game] status 0
scoreboard players add @e[tag=game_timer_one] timer 1

tp @a @e[tag=game,limit=1]

execute at @e[tag=game] run say Game ready.
