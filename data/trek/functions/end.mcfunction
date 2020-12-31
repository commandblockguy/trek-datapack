# End a match
scoreboard players set inProgress trekGeneral 0
scoreboard players set exploding trekGeneral 1

execute at @e[tag=trekShip] if entity @e[type=tnt,distance=..150] run fill ^-65 ^19 ^-95 ^-69 ^23 ^-246 minecraft:tnt
execute at @e[tag=trekShip] if entity @e[type=tnt,distance=..150] run fill ^65 ^19 ^-95 ^69 ^23 ^-246 minecraft:tnt

execute at @e[tag=trekShip] if entity @e[type=tnt,distance=..150] run fill ^-65 ^23 ^-95 ^-65 ^23 ^-246 minecraft:redstone_block
execute at @e[tag=trekShip] if entity @e[type=tnt,distance=..150] run fill ^65 ^23 ^-95 ^65 ^23 ^-246 minecraft:redstone_block

tellraw @a[distance=..500] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"A core just went boom! Stop fighting!","color":"white"}]

bossbar set trek:shield_a visible false
bossbar set trek:shield_b visible false
