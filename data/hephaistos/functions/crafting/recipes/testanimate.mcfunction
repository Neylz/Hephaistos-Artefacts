# Heaphaistos Craft

# ID : testanimate
# namespace : hephaistos
# complete ID : hephaistos:testanimate


# Crafts Infos :
# Output =
#
# Center = minecraft:nether_star
# Item 1 = minecraft:nether_star | count: 8
#
# Total of items needed = 9



# imported craft
execute unless score hephaistos:testanimate hs_craftsLoaded matches 1 run scoreboard players add craftsLoaded hs_data 1
# finsh importation
execute unless score hephaistos:testanimate hs_craftsLoaded matches 1 run scoreboard players set hephaistos:testanimate hs_craftsLoaded 1





# ====== CRAFTING ======
# crafting stages hs_crafting_craftsStages scoreboard :
# 0 = middle isn't good
# 1 = middle have the matching item
# 2 = there is the correct number of items on the altar
# 3 = item 1 is good
# 4 = item 2 is good
#
# 11 = craft is good
# ======================

# init
scoreboard players set hephaistos:testanimate hs_crafting_craftsStages 0

# (1) check item at center of the altar
execute if entity @e[type=item,distance=..1,nbt={Glowing:1b,Item:{id:"minecraft:nether_star"}},limit=1] run scoreboard players set hephaistos:testanimate hs_crafting_craftsStages 1

# check number of items loaded on the altar (have glowing) if passed 1
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 1 unless score numberOfItems hs_crafting_itemsRAM matches 1.. run execute store result score numberOfItems hs_crafting_itemsRAM if entity @e[type=item,nbt={Glowing:1b},distance=..7]
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 1 run scoreboard players set hephaistos:testanimate hs_crafting_craftsStages 2

# check number of each items here (for this craft there is no one)
# stock values checked
## item 1
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 2 store result score hephaistos:testanimate hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:nether_star"}}]
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 2 run scoreboard players operation nether_star hs_crafting_itemsRAM = hephaistos:testanimate hs_crafting_itemsCounting



# is the items >0 matching with craft ? (include the middle item if it is the same as an optional item)
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 2 if score nether_star hs_crafting_itemsRAM matches 9 run scoreboard players set hephaistos:testanimate hs_crafting_craftsStages 3



## check number of items on altar
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 3 if score numberOfItems hs_crafting_itemsRAM matches 9 run scoreboard players set hephaistos:testanimate hs_crafting_craftsStages 11





# =============== Process Craft ===============
# if the items doesn't match with the recipe
execute unless score hephaistos:testanimate hs_crafting_craftsStages matches 11 run scoreboard players add craftsChecked hs_crafting_itemsRAM 1

# if the recipe match
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 11 run scoreboard players set craftsChecked hs_crafting_itemsRAM -1

#launch animation
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 11 run function hephaistos:animation.timer.reset
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 11 run tag @s add hs_animation
execute if score hephaistos:testanimate hs_crafting_craftsStages matches 11 run function hephaistos:crafting/animations/testanimate/loop

clear @a stone{display:{Name:''}}