scoreboard objectives add concussion dummy 
scoreboard players add @e concussion 0
fog @a[scores={concussion=0}] remove heck
camerashake add @a[scores={concussion=1}] 0.4 17

title @a[scores={concussion=1}] actionbar §l§cYOU GOT A CONCUSSION!
execute at @e[scores={concussion=1}] run particle rev:concussion ~ ~2 ~ 
execute at @e[scores={concussion=1}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
scoreboard players add @e[scores={concussion=!0}] concussion 1
execute at @e[scores={concussion=25}] run particle rev:concussion ~ ~2 ~ 
execute at @e[scores={concussion=25}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute as @e run damage @s[scores={concussion=25}] 0 fly_into_wall
effect @e[scores={concussion=25}] mining_fatigue 18 2 true
effect @e[scores={concussion=25}] slowness 18 4 true
effect @e[scores={concussion=25}] weakness 18 2 true

execute at @e[scores={concussion=50}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=50}] 0 fly_into_wall

execute at @e[scores={concussion=75}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=75}] 0 fly_into_wall

execute at @e[scores={concussion=100}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=100}] 0 fly_into_wall

execute at @e[scores={concussion=125}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=125}] 0 fly_into_wall

execute at @e[scores={concussion=150}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=150}] 0 fly_into_wall

gamerule sendcommandfeedback false
execute as @e[scores={concussion=5..15}] run execute at @s[scores={concussion=5..15}] run tp @s[scores={concussion=5..10}] ~ ~0.01 ~ facing ~ ~3 ~
execute as @e[scores={concussion=30..55}] run execute at @s[scores={concussion=30..55}] run tp @s[scores={concussion=30..35}] ~ ~0.01 ~ facing ~ ~-6 ~
execute as @e[scores={concussion=100..115}] run execute at @s[scores={concussion=100..115}] run tp @s[scores={concussion=110..115}] ~ ~0.01 ~ facing ~ ~3 ~
execute as @e[scores={concussion=170..190}] run execute at @s[scores={concussion=170..190}] run tp @s[scores={concussion=185..190}] ~ ~0.01 ~ facing ~ ~-6 ~
execute as @e[scores={concussion=230..245}] run execute at @s[scores={concussion=230..245}] run tp @s[scores={concussion=240..245}] ~ ~0.01 ~ facing ~ ~3 ~
execute as @e[scores={concussion=300..325}] run execute at @s[scores={concussion=300..325}] run tp @s[scores={concussion=320..325}] ~ ~0.01 ~ facing ~ ~-6 ~
execute as @e[scores={concussion=75}] run execute at @s[scores={concussion=75}] run tp @s[scores={concussion=75}] ^-1 ^ ^ facing ^2 ^ ^3
execute as @e[scores={concussion=100}] run execute at @s[scores={concussion=100}] run tp @s[scores={concussion=100}] ^ ^ ^-1 facing ^2 ^ ^-5
execute as @e[scores={concussion=300}] run execute at @s[scores={concussion=300}] run tp @s[scores={concussion=300}] ^-1 ^ ^ facing ^2 ^ ^3
execute as @e[scores={concussion=5}] run execute at @s[scores={concussion=5}] run tp @s[scores={concussion=5}] ^-1 ^ ^ facing ^2 ^ ^3
execute as @e[scores={concussion=200}] run execute at @s[scores={concussion=200}] run tp @s[scores={concussion=200}] ^ ^ ^-1 facing ^2 ^ ^-5
execute as @e[scores={concussion=25}] run execute at @s[scores={concussion=25}] run tp @s[scores={concussion=25}] ^-1 ^ ^ facing ^2 ^ ^3
execute as @e[scores={concussion=150}] run execute at @s[scores={concussion=150}] run tp @s[scores={concussion=150}] ^ ^ ^-1 facing ^2 ^ ^-5
execute as @e[scores={concussion=225}] run execute at @s[scores={concussion=225}] run tp @s[scores={concussion=225}] ^-1 ^ ^ facing ^2 ^ ^3
execute as @e[scores={concussion=350}] run execute at @s[scores={concussion=350}] run tp @s[scores={concussion=350}] ^ ^ ^-1 facing ^2 ^ ^-5
gamerule sendcommandfeedback true

execute at @e[scores={concussion=175}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=175}] 0 fly_into_wall

execute at @e[scores={concussion=200}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=200}] 0 fly_into_wall

execute at @e[scores={concussion=225}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=225}] 0 fly_into_wall

execute at @e[scores={concussion=250}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=250}] 0 fly_into_wall

execute at @e[scores={concussion=275}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=275}] 0 fly_into_wall

execute at @e[scores={concussion=300}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=300}] 0 fly_into_wall

execute at @e[scores={concussion=325}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=325}] 0 fly_into_wall

execute at @e[scores={concussion=350}] run particle rev:concussion ~ ~2 ~ 
execute as @e run damage @s[scores={concussion=350}] 0 fly_into_wall

execute at @e[scores={concussion=50}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=75}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=100}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=125}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=150}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=175}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=200}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=225}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=250}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=275}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=300}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=325}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5
execute at @e[scores={concussion=350}] run playsound rev.fx.concussion_damage @a ~ ~ ~ 0.5

effect @e[scores={concussion=400}] weakness 0 100
effect @e[scores={concussion=400}] slowness 0 100
effect @e[scores={concussion=400}] mining_fatigue 0 100

camerashake stop @a[scores={concussion=400}]
title @a[scores={concussion=400}] actionbar §l§dTHE CONCUSSION HAS PASSED...
scoreboard players set @e[scores={concussion=401}] concussion 0