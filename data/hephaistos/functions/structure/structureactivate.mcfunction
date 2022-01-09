#executed as marker
kill @e[limit=1,scores={hs_structuredetection=2},type=item_frame,sort=nearest]
summon lightning_bolt ~ ~-0.1 ~

setblock ~3 ~-2 ~ structure_block{powered:0b,author:"Neylz",posX:-7,posY:0,posZ:-4,integrity:1f,name:"hephaistos:altar",mode:"LOAD",sizeX:9,sizeY:3,sizeZ:9}
setblock ~3 ~-1 ~ redstone_block
setblock ~3 ~-2 ~ diamond_block

execute as @s at @s positioned ~ ~-1 ~ run function hephaistos:alchemycircles/altarcomplete


#generate altar structure (markers)
summon marker ~ ~ ~ {data:{ha:{altar_center:1b,haveItem:0b}}}

summon marker ~3 ~-1 ~ {data:{ha:{item_catalyst:1b,placeId:0,haveItem:0b}}}
summon marker ~2 ~-1 ~2 {data:{ha:{item_catalyst:1b,placeId:1,haveItem:0b}}}
summon marker ~ ~-1 ~3 {data:{ha:{item_catalyst:1b,placeId:2,haveItem:0b}}}
summon marker ~-2 ~-1 ~2 {data:{ha:{item_catalyst:1b,placeId:3,haveItem:0b}}}
summon marker ~-3 ~-1 ~ {data:{ha:{item_catalyst:1b,placeId:4,haveItem:0b}}}
summon marker ~-2 ~-1 ~-2 {data:{ha:{item_catalyst:1b,placeId:5,haveItem:0b}}}
summon marker ~ ~-1 ~-3 {data:{ha:{item_catalyst:1b,placeId:6,haveItem:0b}}}
summon marker ~2 ~-1 ~-2 {data:{ha:{item_catalyst:1b,placeId:7,haveItem:0b}}}



#set id of markers of altar
execute as @e[type=marker,distance=..1,limit=1,nbt={data:{ha:{altar_center:1b}}}] run scoreboard players operation @s hs_altarId = altarUniqueID hs_data
execute as @e[type=marker,distance=..1,limit=1,nbt={data:{ha:{altar_center:1b}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~3 ~-1 ~ as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:0}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~2 ~-1 ~2 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:1}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~ ~-1 ~3 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:2}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~-2 ~-1 ~2 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:3}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~-3 ~-1 ~ as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:4}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~-2 ~-1 ~-2 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:5}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~ ~-1 ~-3 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:6}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data
execute positioned ~2 ~-1 ~-2 as @e[type=marker,sort=nearest,limit=1,nbt={data:{ha:{item_catalyst:1b,placeId:7}}}] run scoreboard players operation @s hs_altarmarkers = altarUniqueID hs_data

#increment ID
scoreboard players add altarUniqueID hs_data 1

kill @s


#data modify entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_candle"}}] Item.tag.display.Name set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:written_book"}}] Item.tag.title