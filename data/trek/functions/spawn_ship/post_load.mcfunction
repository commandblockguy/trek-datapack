# Run after all of a ship's slices have been copied

execute as @e[tag=trekShip] at @s run function trek:spawn_ship/entities
tag @e remove trekTmpCopier
kill @s
tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Ship reset complete.","color":"white"}]
