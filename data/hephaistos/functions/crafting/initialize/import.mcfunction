# reset scoreboard
scoreboard players set craftsLoaded hs_data 0
scoreboard objectives remove hs_craftsLoaded
scoreboard objectives add hs_craftsLoaded dummy



#import crafts
scoreboard players set loadingCrafts hs_data 1

#close import
schedule function hephaistos:crafting/initialize/stopimport 2s