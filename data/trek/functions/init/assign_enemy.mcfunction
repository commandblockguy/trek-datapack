# Assign the ship running this command an enemy
# Each ship is assigned the ship with an ID one lower than its own.
scoreboard players operation @s trekTargetID = @s trekID
scoreboard players remove @s trekTargetID 1
# If the ship has ID 0, we loop around to the highest ship's ID
execute if score @s trekTargetID matches 0 run scoreboard players operation @s trekTargetID = Current trekID
