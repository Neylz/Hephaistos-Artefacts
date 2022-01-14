#executed from hephaistos:altarcore/checkstructure as as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s
tag @s add hs_altarDeletion
execute as @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}}] if score @s hs_altarmarkers = @e[tag=hs_altarDeletion,limit=1] hs_altarId at @s positioned ~ ~ ~ run data merge entity @e[type=item,distance=..1,limit=1,sort=nearest] {PickupDelay:0,Glowing:0b}
execute as @e[type=marker] if score @s hs_altarmarkers = @e[tag=hs_altarDeletion,limit=1] hs_altarId run kill @s


playsound minecraft:block.beacon.deactivate master @a ~ ~-1 ~ 1000