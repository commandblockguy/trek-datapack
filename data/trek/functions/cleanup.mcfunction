# Stop the game and kill all non-ship entities
tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] Clearing area. Please do not move.","color":"white"}]
kill @e[tag=trek,tag=!trekShip]
scoreboard players set inProgress trekGeneral 0
