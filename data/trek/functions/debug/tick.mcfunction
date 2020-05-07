# Called every tick, regardless of whether the game is running

# Enable the debug trigger for every player who has permission to access it
scoreboard players enable @a[tag=trekDebugAccess] trekDebugTrigger

# Handle debug triggers
#1: Show menu with other triggers
tellraw @a[scores={trekDebugTrigger=1}] [{"text":"Debug: "},{"text":"[Enable Output] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger trekDebugTrigger set 2"}},{"text":"[Disable Output] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger trekDebugTrigger set 3"}},{"text":"[List General Variables] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger trekDebugTrigger set 4"}},{"text":"[List Entities] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger trekDebugTrigger set 5"}},{"text":"[Debug Commands] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger trekDebugTrigger set 6"}}]
#2: Show debug messages
tag @a[scores={trekDebugTrigger=2}] add trekDebugActive
#3: Hide debug messages
tag @a[scores={trekDebugTrigger=3}] remove trekDebugActive
#4: Print general variables
execute as @a[scores={trekDebugTrigger=4}] run tellraw @s [{"text":"General Variables: "},{"text":"inProgress","color":"aqua"},{"text":": "},{"score":{"name":"inProgress","objective":"trekGeneral"},"color":"gold"},{"text":", "},{"text":"currentID","color":"aqua"},{"text":": "},{"score":{"name":"Current","objective":"trekID"},"color":"gold"}]
#5: List all entities and their info
execute as @a[scores={trekDebugTrigger=5}] run function trek:debug/list_entities
#6: Debug command block output
execute as @a[scores={trekDebugTrigger=6}] run function trek:debug/command_block

scoreboard players set @a trekDebugTrigger 0
