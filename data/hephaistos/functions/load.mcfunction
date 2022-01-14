scoreboard objectives add hs_playerSneak minecraft.custom:minecraft.sneak_time


scoreboard objectives add hs_data dummy
execute unless score alreadyLoaded hs_data matches 1 run scoreboard players set altarUniqueID hs_data 0
execute unless score alreadyLoaded hs_data matches 1 run scoreboard players set alreadyLoaded hs_data 1


# Stock item frames with a nether star in them already checked
scoreboard objectives add hs_structuredetection dummy

scoreboard objectives add hs_altarId dummy
scoreboard objectives add hs_altarmarkers dummy
scoreboard objectives add hs_items dummy



# import crafting
function hephaistos:crafting/initialize/import


#init loops
function hephaistos:altarcore/checkstructure

tellraw @a ["",{"text":"=========","color":"dark_gray"},{"text":"  ","color":"dark_purple"},{"text":"Hephaistos Artefacts","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack Made by ","color":"dark_gray"},{"text":"Neylz","color":"gray"},{"text":"\n"},{"text":"Version ","color":"dark_gray"},{"text":"0.1","color":"gray"},{"text":"\n"},{"text":"Compatibility ","color":"dark_gray"},{"text":"1.18.x","color":"gray"},{"text":"\n"},{"text":"Is currently ","color":"dark_gray"},{"text":"installed","color":"green"}]}},{"text":"  =========","color":"dark_gray"}]