# A: 919,182,71
# B: 1081,103,415
# Pos: 1000 150 150

# Copy one slice of a ship over
# Unlike most of the rest of this datapack, this uses absolute coords and will therefore need to be replaced if the position in the world changes.
clone 1081 188 ~ 919 92 ~ -81 92 ~ masked
# To stop signs from popping off, etc.
clone 1081 188 ~-1 919 92 ~-1 -81 92 ~-1 masked
tp ~ ~ ~1

# Recurse
execute unless entity @s[x=0,y=-1,z=417,dx=1,dy=257,dz=1] run schedule function trek:spawn_ship/copy_slice_as 1t
# Base case
execute if entity @s[x=0,y=-1,z=417,dx=1,dy=257,dz=1] run function trek:spawn_ship/post_load
