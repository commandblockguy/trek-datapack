# As far as I can tell there's no way to completely shut off a crystal's beam.
# I tested /data remove and that didn't work for whatever reason
# I do the next best thing by having it point to itself

data modify entity @s BeamTarget.X set from entity @s Pos[0]
data modify entity @s BeamTarget.Y set from entity @s Pos[1]
data modify entity @s BeamTarget.Z set from entity @s Pos[2]
