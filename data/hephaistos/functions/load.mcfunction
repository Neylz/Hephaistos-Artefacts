scoreboard objectives add ha_playerSneak minecraft.custom:minecraft.sneak_time


scoreboard objectives add ha_data dummy
execute unless score alreadyLoaded ha_data matches 1 run scoreboard players set altarUniqueID ha_data 0
execute unless score alreadyLoaded ha_data matches 1 run scoreboard players set alreadyLoaded ha_data 1

scoreboard objectives add ha_structuredetection dummy

scoreboard objectives add ha_altarmarkers dummy

scoreboard objectives add ha_altarId dummy


function hephaistos:altarcore/checkstructure

tellraw @a ["",{"text":"=========","color":"dark_gray"},{"text":"  ","color":"dark_purple"},{"text":"Hephaistos Artefacts","color":"light_purple","hoverEvent":{"action":"show_text","contents":["",{"text":"Datapack Made by ","color":"dark_gray"},{"text":"Neylz","color":"gray"},{"text":"\n"},{"text":"Version ","color":"dark_gray"},{"text":"0.1","color":"gray"},{"text":"\n"},{"text":"Compatibility ","color":"dark_gray"},{"text":"1.18.x","color":"gray"},{"text":"\n"},{"text":"Is currently ","color":"dark_gray"},{"text":"installed","color":"green"}]}},{"text":"  =========","color":"dark_gray"}]