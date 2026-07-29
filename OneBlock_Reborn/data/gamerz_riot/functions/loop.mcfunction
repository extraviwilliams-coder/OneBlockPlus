execute as @e positioned 0.5 60.0 0.5 unless entity @e[tag=gz-a4-block,distance=..1] run function gamerz_riot:fns/create

scoreboard players add @a gz-a4xLoaded 1
scoreboard players set @a[scores={gz-a4xLoaded=2..}] gz-a4xLoaded 2
execute as @a[scores={gz-a4xLoaded=1}] at @s run function gamerz_riot:fns/on-load

scoreboard players add @a gz-a4xOnline 1
scoreboard players set @a[scores={gz-a4xOnline=2..}] gz-a4xOnline 2
execute as @a[scores={gz-a4xOnline=1}] at @s run function gamerz_riot:fns/on-join

execute as @a[scores={gz-a4=1..}] at @s run function gamerz_riot:on-trigger

execute as @e[tag=gz-a4-block] at @s run function gamerz_riot:fns/eventloop

# MONSTER PARTIES
scoreboard players add @e[tag=gz-a4-party] gz-a4-partytime 0
scoreboard players remove @e[scores={gz-a4-partytime=1..}] gz-a4-partytime 1

execute as @e[tag=gz-a4-party] at @s run function gamerz_riot:monster-party/manager

scoreboard players remove @e[scores={gz-a4-pm-life=1..}] gz-a4-pm-life 1
execute as @e[scores={gz-a4-pm-life=1}] at @s run function gamerz_riot:effects/party-mob-despawn

# RECOVERY KIT
tag @a[scores={gz-a4-countdeath=1..,gz-a4-death=..5}] add gz-a4-isdead

tag @e[type=player,tag=gz-a4-isdead] remove gz-a4-isdead

execute as @a[scores={gz-a4-countdeath=1..,gz-a4-death=..5}] at @s unless entity @s[tag=gz-a4-isdead] run function gamerz_riot:fns/recovery-kit/get

execute as @a[scores={gz-a4-countdeath=1..}] at @s run effect give @p minecraft:resistance 7 4 true

execute as @a[scores={gz-a4-countdeath=1..}] at @s unless entity @s[tag=gz-a4-isdead] run scoreboard players set @s gz-a4-countdeath 0

function gamerz_riot:scoreboard