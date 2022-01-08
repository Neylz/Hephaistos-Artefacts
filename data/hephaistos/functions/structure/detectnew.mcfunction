execute as @e[type=item_frame,nbt={Item:{id:"minecraft:nether_star"}}] unless score @s ha_structuredetection matches 0.. run scoreboard players set @s ha_structuredetection 1
execute as @e[type=item_frame,scores={ha_structuredetection=1}] run execute as @s at @s run summon marker ~ ~ ~ {Tags:[ha_structure]}
execute as @e[type=item_frame,scores={ha_structuredetection=1}] run scoreboard players set @s ha_structuredetection 2
#predicate the structure
execute as @e[type=marker,tag=ha_structure] run execute as @s at @s positioned ~ ~ ~ if predicate hephaistos:altar_structure run tag @s add ha_structureverified
kill @e[type=marker,tag=ha_structure,tag=!ha_structureverified]
execute as @e[type=marker,tag=ha_structureverified] run execute as @s at @s run function hephaistos:structure/structureactivate


# item_frame :
# 0 not yet detected
# 1 = detected
# 2 = marker summoned
#
#
