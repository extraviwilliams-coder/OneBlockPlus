scoreboard players add @a Kills 0
scoreboard players add @a Deaths 0
execute as @a[scores={Kills=..100000,Deaths=..100}] run title @s actionbar [{"text":"✿ ","color":"gray"},{"text":"Kills: ","color":"dark_green"},{"score":{"name":"@s","objective":"Kills"},"color":"dark_purple"},{"text":" | ","bold":true,"color":"light_purple"},{"text":"Deaths: ","color":"dark_red"},{"score":{"name":"@s","objective":"Deaths"},"color":"dark_purple"},{"text":" ✿","color":"gray"}]

scoreboard players set @e[scores={Kills=100001..}] Kills 100001
execute as @a[scores={Kills=100001,Deaths=..100}] run title @s actionbar [{"text":"✿ ","color":"gray"},{"text":"Kills: ","color":"dark_green"},{"text":"100000+","color":"dark_purple"},{"text":" | ","bold":true,"color":"light_purple"},{"text":"Deaths: ","color":"dark_red"},{"score":{"name":"@s","objective":"Deaths"},"color":"dark_purple"},{"text":" ✿","color":"gray"}]

scoreboard players set @e[scores={Deaths=101..}] Deaths 101
execute as @a[scores={Kills=..100000,Deaths=101}] run title @s actionbar [{"text":"✿ ","color":"gray"},{"text":"Kills: ","color":"dark_green"},{"score":{"name":"@s","objective":"Kills"},"color":"dark_purple"},{"text":" | ","bold":true,"color":"light_purple"},{"text":"Deaths: ","color":"dark_red"},{"text": "100+","color":"dark_purple"},{"text":" ✿","color":"gray"}]

execute as @a[scores={Kills=100001,Deaths=101}] run title @s actionbar [{"text":"✿ ","color":"gray"},{"text":"Kills: ","color":"dark_green"},{"text":"100000+","color":"dark_purple"},{"text":" | ","bold":true,"color":"light_purple"},{"text":"Deaths: ","color":"dark_red"},{"text": "100+","color":"dark_purple"},{"text":" ✿","color":"gray"}]

#############
#  Players  #
#############

execute store result score Player PlayerCount if entity @e[type=player]

execute if score Player PlayerCount matches 1 run team modify player suffix " 1"
execute if score Player PlayerCount matches 2 run team modify player suffix " 2"
execute if score Player PlayerCount matches 3 run team modify player suffix " 3"
execute if score Player PlayerCount matches 4 run team modify player suffix " 4"
execute if score Player PlayerCount matches 5 run team modify player suffix " 5"
execute if score Player PlayerCount matches 6 run team modify player suffix " 6"
execute if score Player PlayerCount matches 7 run team modify player suffix " 7"
execute if score Player PlayerCount matches 8 run team modify player suffix " 8"
execute if score Player PlayerCount matches 9 run team modify player suffix " 9"
execute if score Player PlayerCount matches 10.. run team modify player suffix " 10+"

##########
#  Mode  #
##########

scoreboard players set #Mode PlayerCount 2

execute if score Player PlayerCount matches 1 run team modify status suffix " Singleplayer"
execute if score Player PlayerCount >= #Mode PlayerCount run team modify status suffix " Multiplayer"

############
#  Phases  #
############

execute if entity @e[scores={gz-a4-riot=1..48},tag=gz-a4-block] run team modify phase suffix " 0 §c[§aTutorial§r§c]"
execute if entity @e[scores={gz-a4-riot=49..333},tag=gz-a4-block] run team modify phase suffix " 1 §c[§aThe Plains§r§c]"
execute if entity @e[scores={gz-a4-riot=334..864},tag=gz-a4-block] run team modify phase suffix " 2 §c[§aThe Underground§r§c]"
execute if entity @e[scores={gz-a4-riot=865..1687},tag=gz-a4-block] run team modify phase suffix " 3 §c[§aTundra§r§c]"
execute if entity @e[scores={gz-a4-riot=1688..2553},tag=gz-a4-block] run team modify phase suffix " 4 §c[§aDeepslate Caves§r§c]"
execute if entity @e[scores={gz-a4-riot=2554..3311},tag=gz-a4-block] run team modify phase suffix " 5 §c[§aLushDrip Caves§r§c]"
execute if entity @e[scores={gz-a4-riot=3312..4173},tag=gz-a4-block] run team modify phase suffix " 6 §c[§aOcean Floor§r§c]"
execute if entity @e[scores={gz-a4-riot=4174..5130},tag=gz-a4-block] run team modify phase suffix " 7 §c[§aRed Desert§r§c]"
execute if entity @e[scores={gz-a4-riot=5131..5951},tag=gz-a4-block] run team modify phase suffix " 8 §c[§aJungle Dungeon§r§c]"
execute if entity @e[scores={gz-a4-riot=5952..6763},tag=gz-a4-block] run team modify phase suffix " 9 §c[§aMangrove Swamp§r§c]"
execute if entity @e[scores={gz-a4-riot=6764..7612},tag=gz-a4-block] run team modify phase suffix " 10 §c[§aThe Nether§r§c]"
execute if entity @e[scores={gz-a4-riot=7613..8623},tag=gz-a4-block] run team modify phase suffix " 11 §c[§aCherry Fields§r§c]"
execute if entity @e[scores={gz-a4-riot=8624..9723},tag=gz-a4-block] run team modify phase suffix " 12 §c[§aIdyll§r§c]"
execute if entity @e[scores={gz-a4-riot=9724..10553},tag=gz-a4-block] run team modify phase suffix " 13 §c[§aThe Deepdark§r§c]"
execute if entity @e[scores={gz-a4-riot=10554..11319},tag=gz-a4-block] run team modify phase suffix " 14 §c[§aDesolated Lands§r§c]"
execute if entity @e[scores={gz-a4-riot=11320..12336},tag=gz-a4-block] run team modify phase suffix " 15 §c[§aThe End§r§c]"

###########
#  Biome  #
###########

execute if entity @e[scores={gz-a4-riot=1..48},tag=gz-a4-block] run team modify biome suffix " Meadow"
execute if entity @e[scores={gz-a4-riot=49..333},tag=gz-a4-block] run team modify biome suffix " Plains"
execute if entity @e[scores={gz-a4-riot=334..864},tag=gz-a4-block] run team modify biome suffix " Windswept Forest"
execute if entity @e[scores={gz-a4-riot=865..1687},tag=gz-a4-block] run team modify biome suffix " Grove"
execute if entity @e[scores={gz-a4-riot=1688..2553},tag=gz-a4-block] run team modify biome suffix " Dripstone Caves"
execute if entity @e[scores={gz-a4-riot=2554..3311},tag=gz-a4-block] run team modify biome suffix " Lush Caves"
execute if entity @e[scores={gz-a4-riot=3312..4173},tag=gz-a4-block] run team modify biome suffix " Deep Lukewarm Ocean"
execute if entity @e[scores={gz-a4-riot=4174..5130},tag=gz-a4-block] run team modify biome suffix " Desert"
execute if entity @e[scores={gz-a4-riot=5131..5951},tag=gz-a4-block] run team modify biome suffix " Bamboo Jungle"
execute if entity @e[scores={gz-a4-riot=5952..6763},tag=gz-a4-block] run team modify biome suffix " Mangrove Swamp"
execute if entity @e[scores={gz-a4-riot=6764..7612},tag=gz-a4-block] run team modify biome suffix " Nether Wastes"
execute if entity @e[scores={gz-a4-riot=7613..8623},tag=gz-a4-block] run team modify biome suffix " Cherry Grove"
execute if entity @e[scores={gz-a4-riot=8624..9723},tag=gz-a4-block] run team modify biome suffix " Savana"
execute if entity @e[scores={gz-a4-riot=9724..10553},tag=gz-a4-block] run team modify biome suffix " Deepdark"
execute if entity @e[scores={gz-a4-riot=10554..11319},tag=gz-a4-block] run team modify biome suffix " Mushroom Fields"
execute if entity @e[scores={gz-a4-riot=11320..12336},tag=gz-a4-block] run team modify biome suffix " The End"