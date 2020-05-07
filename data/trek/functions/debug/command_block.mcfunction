# Debug the command block you're currently standing on
# Less useful than I thought it would be, considering as there are hardly any actual command blocks

execute at @s run tellraw @s [{"text":"Last Command: "},{"nbt":"Command","block":"~ ~-1 ~","interpret":false}]
execute at @s run tellraw @s [{"text":"Last Output (error "},{"nbt":"conditionMet","block":"~ ~-1 ~","interpret":false},{"text":"): "},{"nbt":"LastOutput","block":"~ ~-1 ~","interpret":true}]
