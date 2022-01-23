# Heaphaistos Craft

# ID : ee
# namespace : hephaistos
# complete ID : hephaistos:ee

# What do you do here !?
# It's a easter egg craft !
# Go back and don't come back anymore !

# Crafts Infos :
# Output =
#
# Center = minecraft:player_head{tag:{Properties:{Name:"Neylz"}}}
# Item 1 = minecraft:player_head{tag:{Properties:{Name:"onkologiste"}}}
# Item 2 = minecraft:player_head{tag:{Properties:{Name:"An0maly404"}}}
# Item 3 = minecraft:player_head{tag:{Properties:{Name:"lesninnins"}}}
# Item 4 = minecraft:player_head{tag:{Properties:{Name:"conancat621"}}}
# Item 5 = minecraft:player_head{tag:{Properties:{Name:"Ominico51"}}}
# Item 6 = minecraft:player_head{tag:{Properties:{Name:"SpokezGame"}}}
# Item 7 = minecraft:player_head{tag:{Properties:{Name:"Asetech"}}}
# Item 8 = minecraft:player_head{tag:{Properties:{Name:"Onixyz"}}}
#
# Total of items needed = 9



# imported craft
execute unless score hephaistos:ee hs_craftsLoaded matches 1 run scoreboard players add craftsLoaded hs_data 1
# finsh importation
execute unless score hephaistos:ee hs_craftsLoaded matches 1 run scoreboard players set hephaistos:ee hs_craftsLoaded 1





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
scoreboard players set hephaistos:ee hs_crafting_craftsStages 0

# (1) check item at center of the altar
execute if entity @e[type=item,distance=..1,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"Neylz"}}}},limit=1] run scoreboard players set hephaistos:ee hs_crafting_craftsStages 1

# check number of items loaded on the altar (have glowing) if passed 1
execute if score hephaistos:ee hs_crafting_craftsStages matches 1 unless score numberOfItems hs_crafting_itemsRAM matches 1.. run execute store result score numberOfItems hs_crafting_itemsRAM if entity @e[type=item,nbt={Glowing:1b},distance=..7]
execute if score hephaistos:ee hs_crafting_craftsStages matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 2

# check number of each items here (for this craft there is no one)
# stock values checked
## item 1
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"An0maly404"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"An0maly404"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 2
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"onkologiste"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"onkologiste"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 3
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"lesninnins"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"lesninnins"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 4
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"conancat621"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"conancat621"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 5
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"Ominico51"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"Ominico51"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 6
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"SpokezGame"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"SpokezGame"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 7
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"Onixyz"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"Onixyz"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting
## item 8
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 store result score hephaistos:ee hs_crafting_itemsCounting if entity @e[type=item,distance=..7,nbt={Glowing:1b,Item:{id:"minecraft:player_head",tag:{SkullOwner:{Name:"Asetech"}}}}]
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 run scoreboard players operation player_head{tag:{SkullOwner:{Name:"Asetech"}}} hs_crafting_itemsRAM = hephaistos:ee hs_crafting_itemsCounting



# is the items >0 matching with craft ? (only additional items)
execute if score hephaistos:ee hs_crafting_craftsStages matches 2 if score player_head{tag:{SkullOwner:{Name:"An0maly404"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 3
execute if score hephaistos:ee hs_crafting_craftsStages matches 3 if score player_head{tag:{SkullOwner:{Name:"onkologiste"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 4
execute if score hephaistos:ee hs_crafting_craftsStages matches 4 if score player_head{tag:{SkullOwner:{Name:"lesninnins"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 5
execute if score hephaistos:ee hs_crafting_craftsStages matches 5 if score player_head{tag:{SkullOwner:{Name:"conancat621"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 6
execute if score hephaistos:ee hs_crafting_craftsStages matches 6 if score player_head{tag:{SkullOwner:{Name:"Ominico51"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 7
execute if score hephaistos:ee hs_crafting_craftsStages matches 7 if score player_head{tag:{SkullOwner:{Name:"SpokezGame"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 8
execute if score hephaistos:ee hs_crafting_craftsStages matches 8 if score player_head{tag:{SkullOwner:{Name:"Onixyz"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 9
execute if score hephaistos:ee hs_crafting_craftsStages matches 9 if score player_head{tag:{SkullOwner:{Name:"Asetech"}}} hs_crafting_itemsRAM matches 1 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 10



## check number of items on altar
execute if score hephaistos:ee hs_crafting_craftsStages matches 10 if score numberOfItems hs_crafting_itemsRAM matches 9 run scoreboard players set hephaistos:ee hs_crafting_craftsStages 11





# =============== Process Craft ===============
execute unless score hephaistos:ee hs_crafting_craftsStages matches 11 run scoreboard players add craftsChecked hs_crafting_itemsRAM 1

execute if score hephaistos:ee hs_crafting_craftsStages matches 11 run scoreboard players set craftsChecked hs_crafting_itemsRAM -1

execute as @s at @s positioned ~ ~ ~ if score hephaistos:ee hs_crafting_craftsStages matches 11 run kill @e[type=minecraft:item,distance=..7,nbt={Glowing:1b}]

# summon item !!! WITH TAG {Tags:["hs_crafted"]} !!!
execute as @s at @s if score hephaistos:ee hs_crafting_craftsStages matches 11 run summon minecraft:item ~ ~4 ~ {Item: {id: "suspicious_stew", Count: 1b,tag:{display:{Name:'{"text": "The stew of nothing", "color": "#FADBD8","italic":false}',Lore:['[{"text": "Stew doing ","color": "gray","italic": false},{"text": "almost","color": "gray","italic": true},{"text": " nothing","color": "gray","italic": false}]','{"text": ""}','{"text": "Gift from the gods for"}','{"text": "gathering the scalps of"}','{"text": "the biggest players in a"}','{"text": "place full of magic."}','{"text": ""}','{"text": "- Good soup","color": "dark_gray","italic": false}']},Effects:[{EffectId:22b,EffectDuration:1200},{EffectId:1b},{EffectId:8b},{EffectId:11b},{EffectId:12b},{EffectId:10b}],Enchantments:[{}]}}, Tags: ["hs_crafted"]}




# reset altars (tag)
execute as @s at @s if score hephaistos:ee hs_crafting_craftsStages matches 11 run tag @e[type=minecraft:marker,distance=..7] remove hs_crafting
#finish the process & prevent double crafts
execute if score hephaistos:ee hs_crafting_craftsStages matches 11 run scoreboard players set craftsChecked hs_crafting_itemsRAM -2
