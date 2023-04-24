execute at @a[tag=cursed_dagger] run tag @e[tag=!cursed_dagger,r=2] add cursed_v
scoreboard objectives add cursed_timer dummy
scoreboard players add @e cursed_timer 0
scoreboard players add @e[tag=cursed_dagger] cursed_timer 1
execute as @e[scores={cursed_timer=40}] run execute at @e[tag=cursed_v] run particle rev:cursed ~ ~ ~

execute as @e[scores={cursed_timer=40}] run damage @e[tag=cursed_v] 40
clear @a[tag=!admin] rev:bounty_board
execute at @e[scores={cursed_timer=40}] run playsound mob.wither.death @a
tag @e[tag=cursed_dagger,scores={cursed_timer=40}] remove cursed_dagger
scoreboard players set @e[scores={cursed_timer=40}] cursed_timer 0 

scoreboard objectives add aTempRemove dummy
scoreboard players add @a aTempRemove 0
scoreboard players add @a[tag=has_bounty,scores={aTempRemove=!0}] aTempRemove 1
execute as @a[scores={aTempRemove=100}] run tickingarea remove aTemp
tag @a[scores={has_bounty=100}] remove has_bounty
scoreboard players set @a[scores={aTempRemove=100}] aTempRemove 0

execute at @e[type=rev:jupiter_orb_entity] run playsound rev.fx.magic_ambient_1 @a ~ ~ ~ 0.4

execute at @e[type=rev:jupiter_orb_entity] run tp @e[tag=!jupiter_i,r=10,type=!rev:jupiter_orb_entity] ~ ~ ~