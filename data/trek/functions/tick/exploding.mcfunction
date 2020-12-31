execute unless entity @e[type=tnt] run scoreboard players set exploding trekGeneral 0

scoreboard players set tmp trekGeneral 0
execute as @e[type=tnt] run scoreboard players add tmp trekGeneral 1
execute if score tmp trekGeneral matches 1000.. run kill @e[type=tnt,limit=250,sort=random]

execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:end_stone
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:cyan_terracotta
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:orange_terracotta
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:terracotta
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:orange_stained_glass
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:sea_lantern
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:smooth_stone_slab
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:obsidian
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:lava
execute at @e[tag=trekShip] at @e[type=tnt,distance=..200,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:water
execute at @e[tag=trekShip] at @e[type=tnt,distance=..50,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:end_portal_frame
execute at @e[tag=trekShip] at @e[type=tnt,distance=..50,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:command_block
execute at @e[tag=trekShip] at @e[type=tnt,distance=..50,nbt={Fuse:1s}] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:tnt replace minecraft:repeating_command_block
