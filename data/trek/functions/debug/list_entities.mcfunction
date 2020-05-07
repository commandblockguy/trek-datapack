tag @s add trekTmpDbgOut

tellraw @s "Entities:"

execute as @e[tag=trek] run tellraw @a[tag=trekTmpDbgOut] [{"selector":"@s"},{"text":" ["},{"nbt":"Pos[0]","entity":"@s","interpret":false,"color":"gold"},{"text":","},{"nbt":"Pos[1]","entity":"@s","interpret":false,"color":"gold"},{"text":","},{"nbt":"Pos[2]","entity":"@s","interpret":false,"color":"gold"},{"text":"]: "},{"text":"Tags","color":"aqua"},{"text":":"},{"nbt":"Tags","entity":"@s","interpret":false},{"text":", "},{"text":"ID","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"trekID"},"color":"gold"},{"text":", "},{"text":"targetID","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"trekTargetID"},"color":"gold"},{"text":", "},{"text":"shieldHealth","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"trekShieldHealth"},"color":"gold"},{"text":", "},{"text":"cooldownTime","color":"aqua"},{"text":":"},{"score":{"name":"@s","objective":"trekCooldownTime"},"color":"gold"}]

tag @s remove trekTmpDbgOut