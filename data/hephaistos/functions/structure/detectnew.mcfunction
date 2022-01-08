execute as @e[type=item_frame,nbt={Item:{id:"minecraft:nether_star"}}] unless score @s ha_structuredetection matches 0.. run scoreboard players set @s ha_structuredetection 1
execute as @e[type=item_frame,scores={ha_structuredetection=1}] run execute as @s at @s run summon marker ~ ~ ~ {Tags:[ha_structure]}
execute as @e[type=item_frame,scores={ha_structuredetection=1}] run scoreboard players set @s ha_structuredetection 2
execute as @e[type=marker,tag=ha_structure] run execute as @s at @s run function hephaistos:structure/detectstructure


# item_frame :
# 0 not yet detected
# 1 = detected
# 2 = marker summoned
#
#
