#altar center particle
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s positioned ~ ~ ~ run particle minecraft:small_flame ^0.4 ^ ^
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s run tp @s ~ ~ ~ ~10 ~

#detect if an item is at center
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}},tag=!hs_crafting] at @s if entity @e[type=item,distance=..1,tag=!hs_crafted] run execute as @s at @s run function hephaistos:altarcore/lockbeforecraft


#detect if a craft is finished/founded
execute if score craftsChecked hs_crafting_itemsRAM matches -1 run scoreboard players set craftingOnAltar hs_data -1


#detect if all craft recipes have been tested
execute if score craftingOnAltar hs_data matches 0.. if score craftsLoaded hs_data = craftsChecked hs_crafting_itemsRAM run execute as @e[type=minecraft:marker] if score @s hs_altarId = craftingOnAltar hs_data run tag @s add hs_craftRejected
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run particle minecraft:smoke ~ ~0.2 ~ 0 0.15 0 0 30 force
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run playsound minecraft:entity.enderman.teleport block @a ~ ~ ~ 1 0
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run data modify entity @e[type=minecraft:item,limit=1,distance=..1,nbt={Glowing:1b}] Motion[1] set value 0.4d
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run tag @e[type=minecraft:item,limit=1,distance=..1,nbt={Glowing:1b}] add hs_crafted
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run data modify entity @e[type=minecraft:item,limit=1,distance=..1,nbt={Glowing:1b}] Glowing set value 0b
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run tag @e[type=marker,distance=..7] remove hs_crafting
execute as @e[tag=hs_craftRejected] run scoreboard players set craftingOnAltar hs_data -1
execute as @e[tag=hs_craftRejected] at @s positioned ~ ~ ~ run data modify entity @e[type=minecraft:item,limit=1,distance=..1] PickupDelay set value 10
execute as @e[tag=hs_craftRejected] run tag @s remove hs_craftRejected