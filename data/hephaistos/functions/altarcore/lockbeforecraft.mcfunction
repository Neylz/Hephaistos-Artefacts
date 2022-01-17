# tag/security for crafting
tag @e[type=marker,distance=..4] add hs_crafting

# reset RAM
scoreboard players reset * hs_crafting_itemsRAM
scoreboard players reset * hs_crafting_namesapceCheked
scoreboard players reset * hs_crafting_craftsStages

# call all crafts
scoreboard players operation craftingOnAltar hs_data = @s hs_altarId