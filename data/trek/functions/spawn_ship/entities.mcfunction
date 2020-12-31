summon minecraft:end_crystal ^22 ^13 ^34  {Tags:["trek","trekPhaser"],NoBottom:1}
summon minecraft:end_crystal ^37 ^13 ^14  {Tags:["trek","trekPhaser"],NoBottom:1}
summon minecraft:armor_stand ^0 ^7 ^77  {Tags:["trek","trekTorpedoMarker"],Marker:1,Invisible:1}
summon minecraft:hopper_minecart ^-9.5 ^5 ^44.4  {Tags:["trek","trekTorpedoCollector","trekTmpSpawn"],Items:[{Slot: 0b, id: "minecraft:fire_charge", tag: {display: {Name: '{"text":"Torpedo"}'}}, Count: 63b}, {Slot: 1b, id: "minecraft:fire_charge", tag: {display: {Name: '{"text":"High Yield Torpedo"}'}}, Count: 63b}, {Slot: 2b, id: "minecraft:barrier", Count: 1b}, {Slot: 3b, id: "minecraft:barrier", Count: 1b}, {Slot: 4b, id: "minecraft:barrier", Count: 1b}]}
scoreboard players operation @e[tag=trekTorpedoCollector,tag=trekTmpSpawn] trekID = @s trekID
summon minecraft:hopper_minecart ^7 ^5 ^0  {Tags:["trek","trekShieldCollector"],Items:[{Slot: 0b, id: "minecraft:redstone", tag: {display: {Name: '{"text":"Shield Fuel"}'}}, Count: 63b}, {Slot: 1b, id: "minecraft:barrier", Count: 1b}, {Slot: 2b, id: "minecraft:barrier", Count: 1b}, {Slot: 3b, id: "minecraft:barrier", Count: 1b}, {Slot: 4b, id: "minecraft:barrier", Count: 1b}]}
summon minecraft:armor_stand ^-5 ^6.83 ^-4  {Tags:["trekInternalFabricator","trek"],Marker:1,Invisible:1}
# todo: move this elsewhere in the actual ship
summon minecraft:armor_stand ^-5 ^6.83 ^-4  {Tags:["trekExternalFabricator","trek"],Marker:1,Invisible:1}
summon minecraft:end_crystal ^-22 ^13 ^34  {Tags:["trek","trekPhaser"],NoBottom:1}
summon minecraft:end_crystal ^-38 ^13 ^13  {Tags:["trek","trekPhaser"],NoBottom:1}
summon minecraft:end_crystal ^0 ^-21 ^-87  {Tags:["trek","trekCoreSensor"]}
# Not technically an entity, but it doesn't work if /clone'd
setblock ^0 ^-18 ^-92 lava
tag @e remove trekTmpSpawn
