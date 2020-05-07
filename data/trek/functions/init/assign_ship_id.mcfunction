# Assign the ship that is running this command a unique ID
execute if score @s trekID matches 1.. run execute unless entity @e[tag=TrekShip] run tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Ship has unexpected ID! Run the cleanup function, re-paste the ships, and try again.","color":"red"}]
scoreboard players add Current trekID 1
scoreboard players operation @s trekID = Current trekID
