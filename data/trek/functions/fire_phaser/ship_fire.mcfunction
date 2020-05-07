# Add a tag to ourselves
tag @s add trekTmpFiringShip

# Add a tag to our target
execute as @e[tag=trekShip] if score @s trekID = @e[tag=trekTmpFiringShip,limit=1] trekTargetID run tag @s add trekTmpTargetShip

# Pick a random phaser that's cooled down to fire
execute as @e[tag=trekPhaser,distance=..100,sort=random,limit=1,scores={trekCooldownTime=100..}] run function trek:fire_phaser/phaser_fire

# Remove tags
tag @s remove trekTmpFiringShip
tag @e remove trekTmpTargetShip