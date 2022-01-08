#executed as marker
kill @e[limit=1,scores={ha_structuredetection=2},type=item_frame,sort=nearest]
summon lightning_bolt ~ ~ ~

setblock ~3 ~-2 ~ structure_block{powered:0b,author:"Neylz",posX:-7,posY:0,posZ:-4,integrity:1f,name:"hephaistos:altar",mode:"LOAD",sizeX:9,sizeY:3,sizeZ:9}
setblock ~3 ~-1 ~ redstone_block
setblock ~3 ~-2 ~ diamond_block

execute as @s at @s positioned ~ ~-1 ~ run function hephaistos:alchemycircles/altarcomplete


#summon marker ~ ~ ~ {data:{ha_}}
kill @s


#data modify entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:red_candle"}}] Item.tag.display.Name set from entity @e[type=item,limit=1,nbt={Item:{id:"minecraft:written_book"}}] Item.tag.title