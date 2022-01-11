#altar center particle
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s positioned ~ ~ ~ run particle minecraft:small_flame ^0.4 ^ ^
execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s run tp @s ~ ~ ~ ~10 ~