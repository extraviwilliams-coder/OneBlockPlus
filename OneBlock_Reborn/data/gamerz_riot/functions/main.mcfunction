gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule universalAnger true
gamerule forgiveDeadPlayers true

scoreboard objectives add gz-a4-riot dummy

scoreboard objectives add gz-a4-cool dummy

scoreboard objectives add gz-a4-randblock dummy

scoreboard objectives add gz-a4-randafter dummy

scoreboard objectives add gz-a4-mobtype dummy
scoreboard objectives add gz-a4-mobamount dummy

scoreboard objectives add gz-a4-partytime dummy

scoreboard objectives add gz-a4-partyrand dummy

scoreboard objectives add gz-a4-pm-life dummy

team add gz-a4-party
team modify gz-a4-party collisionRule never
team modify gz-a4-party friendlyFire false
team modify gz-a4-party seeFriendlyInvisibles true

scoreboard objectives add gz-a4-temp dummy

scoreboard objectives add gz-a4-allmined dummy
scoreboard objectives add gz-a4-playermined dummy {"text": "Blocks"}
scoreboard objectives setdisplay list gz-a4-playermined
scoreboard objectives setdisplay belowName gz-a4-playermined

scoreboard objectives add gz-a4-death deathCount
scoreboard objectives add gz-a4-countdeath deathCount

scoreboard objectives add gz-a4-upgrade dummy

scoreboard objectives add gz-a4-second dummy

scoreboard objectives add gz-a4-portalsfx dummy

scoreboard objectives add gz-a4-vilname dummy

scoreboard objectives add gz-a4-warning dummy

scoreboard objectives add gz-a4 trigger

scoreboard objectives remove gz-a4xOnline
scoreboard objectives add gz-a4xOnline dummy

scoreboard objectives add gz-a4xLoaded dummy

scoreboard objectives add gz-a4-variant dummy

# Scoreboard

scoreboard objectives add Scoreboard dummy {"text":"§k§l<§r§c§l O§6§ln§e§le§a§lB§3§ll§9§lo§5§lc§c§lk §e§lR§a§le§3§lb§9§lo§5§lr§c§ln§r §k§l>§r    "}
scoreboard objectives setdisplay sidebar Scoreboard

scoreboard players set ------------------------- Scoreboard 11

scoreboard players set §l§c1.20§e+§r Scoreboard 10
team add version
team join version §l§c1.20§e+§r
team modify version prefix "§l§4V§ce§cr§6s§6i§eo§en§r: "

scoreboard players set §b@§9Gamerz_Riot§r Scoreboard 9
team add author
team join author §b@§9Gamerz_Riot§r
team modify author prefix "§l§cA§cu§6t§6h§eo§er§r: "

scoreboard players set §r Scoreboard 8

scoreboard players set §l§d♢§r§2Phase§b: Scoreboard 7
team add phase
team join phase §l§d♢§r§2Phase§b:

scoreboard players set §l§d♢§r§2Biome§b: Scoreboard 6
team add biome
team join biome §l§d♢§r§2Biome§b:

scoreboard players set §l§d♢§r§2Players§b: Scoreboard 5
team add player
team join player §l§d♢§r§2Players§b:

scoreboard players set §l§d♢§r§2Status§b: Scoreboard 4
team add status
team join status §l§d♢§r§2Status§b:

scoreboard players set §k Scoreboard 3

scoreboard players set §cSubscribe§l▶§r Scoreboard 2
team add subscribe
team join subscribe §cSubscribe§l▶§r
team modify subscribe prefix "       \u00A79Like§l👍§r §b& "

scoreboard players set §4youtube.com§r Scoreboard 1
team add link
team join link §4youtube.com§r
team modify link suffix "§4/@Gamerz_Riot§r"
team modify link prefix "  "

scoreboard players set §s§r------------------------- Scoreboard 0

scoreboard objectives add PlayerCount dummy
scoreboard objectives add Phase dummy

scoreboard objectives add Kills totalKillCount
scoreboard objectives add Deaths deathCount