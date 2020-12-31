# Initialize various things
# This probably needs to be cleaned up
# It contains various things that should be run once on load (scoreboard objectives),
# as well as assigning the ships an ID, which should be its own function.
# Since ships aren't killed between matches, this only needs to be run once per server unless the ships are killed somehow

tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Initializing Trek PvP Command System","color":"white"}]

# Per-player variables
scoreboard objectives add trekDebugTrigger trigger

# General variables
scoreboard objectives add trekGeneral dummy
scoreboard players reset * trekGeneral

# Game objects
scoreboard objectives add trekID dummy
scoreboard objectives add trekTargetID dummy
scoreboard objectives add trekShieldHealth dummy
scoreboard objectives add trekCooldownTime dummy

# So the cores don't blow up immediately
gamerule randomTickSpeed 3

execute unless entity @e[tag=trekShip] run tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"No ships found!","color":"red"}]

execute if score current trekID matches 1 run tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Only one ship found! This is probably an error!","color":"red"}]

bossbar add trek:shield_a "Shield Health"
bossbar add trek:shield_b "Shield Health"
bossbar set trek:shield_a visible false
bossbar set trek:shield_b visible false

execute if entity @e[tag=trekShip] run function trek:init/ships_found
