# Process hopper minecarts used to collect shield fuel

execute if score @e[tag=trekShip,limit=1,sort=nearest] trekShieldHealth matches ..99 if data entity @s Items[{Slot:0b,Count:64b}] run scoreboard players add @e[tag=trekShip,limit=1,sort=nearest] trekShieldHealth 10
scoreboard players set @e[tag=trekShip,scores={trekShieldHealth=100..}] trekShieldHealth 100 
execute if score @e[tag=trekShip,limit=1,sort=nearest] trekShieldHealth matches ..99 if data entity @s Items[{Slot:0b,Count:64b}] run data modify entity @s Items[{Slot:0b,Count:64b}].Count set value 63b
