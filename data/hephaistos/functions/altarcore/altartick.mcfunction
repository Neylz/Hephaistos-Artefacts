#altar center particle
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s positioned ~ ~ ~ run particle minecraft:small_flame ^0.4 ^ ^
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s run tp @s ~ ~ ~ ~10 ~

execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}},tag=!hs_crafting] at @s if entity @e[type=item,distance=..1,tag=!hs_crafted] run execute as @s at @s run function hephaistos:altarcore/lockbeforecraft