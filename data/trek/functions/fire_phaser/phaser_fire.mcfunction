# Phaser? I barely know her!

# Summon a TNT and teleport it to the target ship
summon creeper ~ ~ ~ {ExplosionRadius:3,ignited:1,Fuse:5,Tags:["trek","trekPhaserProjectile","trekTmpCurrProj"]}
execute at @e[tag=trekTmpTargetShip,limit=1] run spreadplayers ~ ~ 0 100 false @e[tag=trekTmpCurrProj]

# Update our laser beam
data modify entity @s BeamTarget.X set from entity @e[tag=trekTmpCurrProj,limit=1] Pos[0]
data modify entity @s BeamTarget.Y set from entity @e[tag=trekTmpCurrProj,limit=1] Pos[1]
data modify entity @s BeamTarget.Z set from entity @e[tag=trekTmpCurrProj,limit=1] Pos[2]

tag @e remove trekTmpCurrProj

# Set our cooldown to 0
scoreboard players set @s trekCooldownTime 0
