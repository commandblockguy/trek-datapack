# Called every tick, but only when the game is running

# Update ships
execute as @e[tag=trekShip] at @s run function trek:shields/ship_process

# Update phasers
scoreboard players add @e[tag=trekPhaser] trekCooldownTime 1
execute as @e[tag=trekPhaser,scores={trekCooldownTime=10..}] run function trek:fire_phaser/disable_beam

# Process item collection
execute as @e[tag=trekShieldCollector] at @s run function trek:shields/collector_process
execute as @e[tag=trekTorpedoCollector] at @s run function trek:torpedo/collector_process

# Process fabricator loot
execute as @e[tag=trekInternalFabricator] at @s run execute as @a[distance=..10] run loot spawn ~ ~ ~ loot trek:fab_internal
execute as @e[tag=trekExternalFabricator] at @s run execute as @a[distance=..10] run loot spawn ~ ~ ~ loot trek:fab_external

# Determine if a core has exploded
execute as @e[tag=trekShip] at @s run execute unless entity @e[tag=trekCoreSensor,distance=..100] run function trek:end
