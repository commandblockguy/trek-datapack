# Start game

tellraw @a[distance=..500] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Go!","color":"white"}]
scoreboard players set @e[tag=trekShip] trekShieldHealth 100
tag @e[tag=trekShip] remove trekShieldDisabled
bossbar set trek:shield_a visible true
bossbar set trek:shield_b visible true

# Actually mark the event as in progress
scoreboard players set inProgress trekGeneral 1
scoreboard players set exploding trekGeneral 0
