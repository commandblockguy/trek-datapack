# Regenerate both ships
# Contains absolute coordinates
tellraw @a[tag=trekDebugActive] [{"text":"[","color":"white"},{"text":"Trek","color":"green"},{"text":"] "},{"text":"Resetting ships, please wait...","color":"white"}]

# Clean up existing stuff
kill @e[tag=trek,tag=!trekShip]
kill @e[type=tnt]
scoreboard players set inProgress trekGeneral 0

# Start copying the ship
summon armor_stand 0 0 -416 {Tags:[trek,trekTmpCopier],Marker:1,NoGravity:1,Invulnerable:1}
function trek:spawn_ship/copy_slice_as
