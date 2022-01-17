# crafts namespace : hephaistos

# import
execute if score loadingCrafts hs_data matches 1 unless score hephaistos hs_namespaceLoaded matches 1 run function hephaistos:crafting/recipes.list
execute if score loadingCrafts hs_data matches 1 unless score hephaistos hs_namespaceLoaded matches 1 run scoreboard players set hephaistos hs_namespaceLoaded 1


execute if score craftingOnAltar hs_data matches 0.. unless score hephaistos hs_crafting_namesapceCheked matches 1 run execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s if score @s hs_altarId = craftingOnAltar hs_data run function hephaistos:crafting/recipes.list
scoreboard players set hephaistos hs_crafting_namesapceCheked 1