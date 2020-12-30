# Process shields every tick

# Display shields
# There's no way to do this without hardcoded IDs, commands are stupid. Not nearly as stupid as the Bukkit ecosystem, though.
execute if score @s trekID matches 1 run bossbar set trek:shield_a players @a[distance=..220]
execute if score @s trekID matches 2 run bossbar set trek:shield_b players @a[distance=..220]

execute if score @s trekID matches 1 unless entity @s[tag=trekShieldDisabled] run bossbar set trek:shield_a color green
execute if score @s trekID matches 2 unless entity @s[tag=trekShieldDisabled] run bossbar set trek:shield_b color green

execute if score @s trekID matches 1 unless entity @s[tag=trekShieldDisabled] if score @s trekShieldHealth matches 0 run bossbar set trek:shield_a color yellow
execute if score @s trekID matches 2 unless entity @s[tag=trekShieldDisabled] if score @s trekShieldHealth matches 0 run bossbar set trek:shield_b color yellow

execute if score @s trekID matches 1 if entity @s[tag=trekShieldDisabled] run bossbar set trek:shield_a color red
execute if score @s trekID matches 2 if entity @s[tag=trekShieldDisabled] run bossbar set trek:shield_b color red

execute if score @s trekID matches 1 store result bossbar trek:shield_a value run scoreboard players get @s trekShieldHealth
execute if score @s trekID matches 2 store result bossbar trek:shield_b value run scoreboard players get @s trekShieldHealth

# Process phaser projectiles
tag @s add trekTmpShielder
execute if entity @s[tag=!trekShieldDisabled] run tag @e[tag=trekPhaserProjectile,tag=!trekShielded,distance=..100] add trekTmpInRange

execute if score @s trekShieldHealth matches 5.. as @e[tag=trekTmpInRange] run scoreboard players remove @e[tag=trekTmpShielder] trekShieldHealth 5
execute if score @s trekShieldHealth matches 50.. run kill @e[tag=trekTmpInRange]
execute if score @s trekShieldHealth matches 25..49 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionRadius set value 1b
execute if score @s trekShieldHealth matches 1..24 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionRadius set value 2b
execute if score @s trekShieldHealth matches ..49 run tag @e[tag=trekTmpInRange] add trekShielded

tag @e[tag=trekTmpInRange] remove trekTmpInRange
tag @s remove trekTmpShielder


# Process torpedoes
tag @s add trekTmpShielder
execute if entity @s[tag=!trekShieldDisabled] as @e[tag=trekTorpedo,tag=!trekShielded,distance=..100] unless score @s trekID = @e[tag=trekTmpShielder,limit=1] trekID run tag @s add trekTmpInRange

execute if score @s trekShieldHealth matches 5.. as @e[tag=trekTmpInRange] run scoreboard players remove @e[tag=trekTmpShielder] trekShieldHealth 3
execute if score @s trekShieldHealth matches 75.. run kill @e[tag=trekTmpInRange]
execute if score @s trekShieldHealth matches 50..74 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionPower set value 1b
execute if score @s trekShieldHealth matches 25..49 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionPower set value 2b
execute if score @s trekShieldHealth matches 1..24 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionRadius set value 3b
execute if score @s trekShieldHealth matches ..49 run tag @e[tag=trekTmpInRange] add trekShielded

tag @e[tag=trekTmpInRange] remove trekTmpInRange
tag @s remove trekTmpShielder

# Process high yield torpedoes
execute if entity @s[tag=!trekShieldDisabled] as @e[tag=trekTorpedoHY,tag=!trekShielded,distance=..100] unless score @s trekID = @e[tag=trekTmpShielder,limit=1] trekID run tag @s add trekTmpInRange

execute if score @s trekShieldHealth matches 5.. as @e[tag=trekTmpInRange] run scoreboard players remove @e[tag=trekTmpShielder] trekShieldHealth 5
execute if score @s trekShieldHealth matches 75.. as @e[tag=trekTmpInRange] run data modify entity @s ExplosionPower set value 1b
execute if score @s trekShieldHealth matches 50..74 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionPower set value 3b
execute if score @s trekShieldHealth matches 25..49 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionRadius set value 5b
execute if score @s trekShieldHealth matches 1..24 as @e[tag=trekTmpInRange] run data modify entity @s ExplosionRadius set value 7b
execute if score @s trekShieldHealth matches ..49 run tag @e[tag=trekTmpInRange] add trekShielded

tag @e[tag=trekTmpInRange] remove trekTmpInRange
tag @s remove trekTmpShielder
