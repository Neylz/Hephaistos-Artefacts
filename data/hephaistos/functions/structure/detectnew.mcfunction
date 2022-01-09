#detect if an already tested  item frame have no more star
execute as @e[type=item_frame,scores={hs_structuredetection=2},nbt=!{Item:{id:"minecraft:nether_star"}}] run scoreboard players reset @s


execute as @e[type=item_frame,nbt={Item:{id:"minecraft:nether_star"}}] unless score @s hs_structuredetection matches 0.. run scoreboard players set @s hs_structuredetection 1
execute as @e[type=item_frame,scores={hs_structuredetection=1}] run execute as @s at @s run summon marker ~ ~ ~ {Tags:[hs_structure]}
execute as @e[type=item_frame,scores={hs_structuredetection=1}] run scoreboard players set @s hs_structuredetection 2

#predicate the structure
execute as @e[type=marker,tag=hs_structure] run execute as @s at @s positioned ~ ~ ~ if predicate hephaistos:altar_structure run tag @s add hs_structureverified
kill @e[type=marker,tag=hs_structure,tag=!hs_structureverified]
execute as @e[type=marker,tag=hs_structureverified] at @s positioned ~ ~ ~ if entity @e[distance=..1,limit=1,sort=nearest,type=marker,nbt={data:{ha:{altar_center:1b}}}] run kill @s
execute as @e[type=marker,tag=hs_structureverified] run execute as @s at @s positioned ~ ~ ~ run function hephaistos:structure/structureactivate


# item_frame :
# 0 not yet detected
# 1 = detected
# 2 = marker summoned
#
#
