scoreboard objectives add hs_playerSneak minecraft.custom:minecraft.sneak_time


scoreboard objectives add hs_data dummy
execute unless score alreadyLoaded hs_data matches 1 run scoreboard players set altarUniqueID hs_data 0
execute unless score alreadyLoaded hs_data matches 1 run scoreboard players set alreadyLoaded hs_data 1


# Stock item frames with a nether star in them already checked
scoreboard objectives add hs_structuredetection dummy

scoreboard objectives add hs_altarId dummy
scoreboard objectives add hs_altarmarkers dummy


# crafting scoreboards
## (import only one time each namespace)
scoreboard objectives add hs_namespaceLoaded dummy
## (RAM) wich items are on altar when craft a new item
scoreboard objectives add hs_crafting_itemsRAM dummy
## already checked namespace for crafting
scoreboard objectives add hs_crafting_namesapceCheked dummy
## list of crafts loaded
scoreboard objectives add hs_craftsLoaded dummy
## check stages for each crafts
scoreboard objectives add hs_crafting_craftsStages dummy


# import crafting
## reset scoreboard
scoreboard players reset * hs_craftsLoaded
scoreboard players reset * hs_namespaceLoaded
scoreboard players reset * hs_crafting_itemsRAM

scoreboard players set craftingOnAltar hs_data -1
scoreboard players set craftsLoaded hs_data 0
scoreboard players set loadingCrafts hs_data 1
schedule function hephaistos:altarcore/stoploadingrecipes 1s


#init loops
function hephaistos:altarcore/checkstructure

tellraw @a ["",{"text":"\u2756 ","color":"#4A4B4E"},{"text":"Hephaistos ","color":"#B41906","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/customization/hephaistos-rituals"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack Made by ","color":"dark_gray"},{"text":"Neylz","color":"gray"},{"text":"\n"},{"text":"Version ","color":"dark_gray"},{"text":"0.18.1","color":"gray"},{"text":"\n"},{"text":"Compatibility ","color":"dark_gray"},{"text":"1.18.x","color":"gray"},{"text":"\n"},{"text":"Is currently ","color":"dark_gray"},{"text":"installed","color":"green"}]}},{"text":"Rituals","color":"#4A4B4E","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/customization/hephaistos-rituals"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack Made by ","color":"dark_gray"},{"text":"Neylz","color":"gray"},{"text":"\n"},{"text":"Version ","color":"dark_gray"},{"text":"0.18.1","color":"gray"},{"text":"\n"},{"text":"Compatibility ","color":"dark_gray"},{"text":"1.18.x","color":"gray"},{"text":"\n"},{"text":"Is currently ","color":"dark_gray"},{"text":"installed","color":"green"}]}}]