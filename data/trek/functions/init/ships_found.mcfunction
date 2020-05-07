# Give each ship an ID
scoreboard players set Current trekID 0
execute as @e[tag=trekShip] run function trek:init/assign_ship_id
execute as @e[tag=trekShip] run function trek:init/assign_enemy
execute as @e[tag=trekShip] run scoreboard players operation @e[tag=trekPhaser,distance=..100] trekID = @s trekID
