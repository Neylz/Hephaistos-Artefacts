# Heaphaistos Craft

# ID : helpbook
# namespace : hephaistos
# complete ID : hephaistos:helpbook


# Crafts Infos :
# Output =
#
# Center = minecraft:book
# Item 1 = 
# Item 2 = 
# Item 3 = 
# Item 4 = 
# Item 5 = 
# Item 6 = 
# Item 7 = 
# Item 8 = 
#
# Total of items needed = 1



# imported craft
execute unless score hephaistos:helpbook hs_craftsLoaded matches 1 run scoreboard players add craftsLoaded hs_data 1
# finsh importation
execute unless score hephaistos:helpbook hs_craftsLoaded matches 1 run scoreboard players set hephaistos:helpbook hs_craftsLoaded 1





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
scoreboard players set hephaistos:helpbook hs_crafting_craftsStages 0

# (1) check item at center of the altar
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:book"}}] run scoreboard players set hephaistos:helpbook hs_crafting_craftsStages 1

# check number of items loaded on the altar (have glowing) if passed 1
execute if score hephaistos:helpbook hs_crafting_craftsStages matches 1 unless score numberOfItems hs_crafting_itemsRAM matches 1.. run execute store result score numberOfItems hs_crafting_itemsRAM if entity @e[type=item,nbt={Glowing:1b},distance=..7]
execute if score hephaistos:helpbook hs_crafting_craftsStages matches 1 run scoreboard players set hephaistos:helpbook hs_crafting_craftsStages 2

# check number of each items here (for this craft there is no one)
# stock values checked




# is the items >0 matching with craft ?


# not checking between 3 and 10 included because no additional items
execute if score hephaistos:helpbook hs_crafting_craftsStages matches 2 if score numberOfItems hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:helpbook hs_crafting_craftsStages 11





# =============== Process Craft ===============
execute unless score hephaistos:helpbook hs_crafting_craftsStages matches 11 run scoreboard players add craftsChecked hs_crafting_itemsRAM 1

execute if score hephaistos:helpbook hs_crafting_craftsStages matches 11 run scoreboard players set craftsChecked hs_crafting_itemsRAM -1

execute as @s at @s positioned ~ ~ ~ if score hephaistos:helpbook hs_crafting_craftsStages matches 11 run kill @e[type=minecraft:item,distance=..7,nbt={Glowing:1b}]

# summon item !!! WITH TAG {Tags:["hs_crafted"]} !!!
execute as @s at @s if score hephaistos:helpbook hs_crafting_craftsStages matches 11 run summon minecraft:item ~ ~4 ~ {Item: {id: "written_book", Count: 1b}, Tags: ["hs_crafted"]}





#finish the process & prevent double crafts
execute if score hephaistos:helpbook hs_crafting_craftsStages matches 11 run scoreboard players set craftsChecked hs_crafting_itemsRAM -2
# reset altars (tag)
execute if score hephaistos:helpbook hs_crafting_craftsStages matches 11 run tag @e[type=marker,distance=..7] remove hs_crafting