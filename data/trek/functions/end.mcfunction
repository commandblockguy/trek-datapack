# End a match
scoreboard players set inProgress trekGeneral 0

tellraw @a[distance=..500] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"A core just went boom! Stop fighting!","color":"white"}]

bossbar set trek:shield_a visible false
bossbar set trek:shield_b visible false
