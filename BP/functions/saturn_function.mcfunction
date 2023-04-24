scoreboard objectives add saturn dummy
scoreboard players add @e saturn 0

scoreboard players add @e[scores={saturn=!0}] saturn 1 
tag @e[scores={saturn=0}] remove saturn
tag @e[scores={saturn=1}] add saturn
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~5 ~ ~2.5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~5 ~ ~-2.5 
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-5 ~ ~2.5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-5 ~ ~-2.5

execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~2.5 ~ ~
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~2.5 ~ ~- 
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-2.5 ~ ~
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-2.5 ~ ~-

execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~5 ~ ~ 
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-5 ~ ~ 
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~ ~ ~5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~ ~ ~-5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~5 ~ ~5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~5 ~ ~-5 
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-5 ~ ~5
execute at @e[tag=saturn] run summon rev:saturn_orb_entity ~-5 ~ ~-5
execute at @e[type=rev:saturn_orb_entity] run particle rev:saturn ~ ~ ~

scoreboard players set @e[tag=saturn,scores={saturn=300}] saturn 0