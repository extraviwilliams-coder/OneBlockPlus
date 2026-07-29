kill @e[tag=gz-a4-block]
setblock ~ ~ ~ minecraft:grass_block
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"ash",PersistenceRequired:1b,Radius:0.5f,NoGravity:1b,Duration:2000000000,Tags:["gz-a4-block"]}