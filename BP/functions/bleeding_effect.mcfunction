scoreboard objectives add bleeding dummy 
scoreboard players add @e bleeding 0
fog @a[scores={bleeding=0}] remove heck

title @a[scores={bleeding=1}] actionbar §l§cYOU ARE BLEEDING!
execute at @e[scores={bleeding=1}] run particle rev:bleeding ~ ~ ~ 
execute at @e[scores={bleeding=1}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
scoreboard players add @e[scores={bleeding=!0}] bleeding 1

execute at @e[scores={bleeding=25}] run particle rev:bleeding ~ ~ ~ 
execute at @e[scores={bleeding=25}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute as @e run damage @s[scores={bleeding=25}] 1 starve

effect @e[scores={bleeding=25}] nausea 2 2 true
effect @e[scores={bleeding=25}] slowness 2 4 true

execute at @e[scores={bleeding=50}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=50}] 1 starve
effect @e[scores={bleeding=50}] nausea 3 3 true
execute at @e[scores={bleeding=75}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=75}] 1 starve
effect @e[scores={bleeding=75}] nausea 4 4 true
execute at @e[scores={bleeding=100}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=100}] 1 starve
effect @e[scores={bleeding=100}] nausea 5 5 true
execute at @e[scores={bleeding=125}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=125}] 1 starve
effect @e[scores={bleeding=125}] nausea 6 6 true
execute at @e[scores={bleeding=150}] run particle rev:bleeding ~ ~ ~ 
fog @a[scores={bleeding=150}] push minecraft:fog_hell heck
execute as @e run damage @s[scores={bleeding=150}] 1 starve
effect @e[scores={bleeding=150}] nausea 7 7 true
effect @e[scores={bleeding=150}] slowness 2 2 true

execute at @e[scores={bleeding=175}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=175}] 1 starve
effect @e[scores={bleeding=175}] nausea 8 8 true
effect @e[scores={bleeding=175}] slowness 2 2 true

execute at @e[scores={bleeding=200}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=200}] 1 starve

effect @e[scores={bleeding=200}] nausea 9 9 true
effect @e[scores={bleeding=200}] slowness 2 2 true
effect @e[scores={bleeding=200}] weakness 2 2 true


execute at @e[scores={bleeding=225}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=225}] 1 starve
effect @e[scores={bleeding=225}] nausea 10 10 true
effect @e[scores={bleeding=225}] slowness 2 2 true
effect @e[scores={bleeding=225}] weakness 2 2 true

execute at @e[scores={bleeding=250}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=250}] 1 starve
effect @e[scores={bleeding=250}] nausea 11 11 true
effect @e[scores={bleeding=250}] slowness 2 2 true
effect @e[scores={bleeding=250}] weakness 2 2 true

execute at @e[scores={bleeding=275}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=275}] 1 starve
effect @e[scores={bleeding=275}] nausea 12 12 true
effect @e[scores={bleeding=275}] slowness 2 2 true
effect @e[scores={bleeding=275}] weakness 2 2 true

execute at @e[scores={bleeding=300}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=300}] 1 starve
effect @e[scores={bleeding=300}] nausea 13 13 true
effect @e[scores={bleeding=300}] slowness 2 2 true
effect @e[scores={bleeding=300}] weakness 2 2 true

execute at @e[scores={bleeding=325}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=325}] 1 starve
effect @e[scores={bleeding=325}] nausea 14 14 true
effect @e[scores={bleeding=325}] slowness 2 2 true
effect @e[scores={bleeding=325}] weakness 2 2 true

execute at @e[scores={bleeding=350}] run particle rev:bleeding ~ ~ ~ 
execute as @e run damage @s[scores={bleeding=350}] 1 starve
effect @e[scores={bleeding=350}] nausea 15 15 true

execute at @e[scores={bleeding=50}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=75}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=100}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=125}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=150}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=175}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=200}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=225}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=250}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=275}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=300}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=325}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5
execute at @e[scores={bleeding=350}] run playsound rev.fx.bleeding_damage @a ~ ~ ~ 0.5



title @a[scores={bleeding=400}] actionbar §l§dTHE BLEEDING HAS STOPPED

scoreboard players set @e[scores={bleeding=401}] bleeding 0