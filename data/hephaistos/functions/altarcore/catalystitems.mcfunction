#teleport near item to the marker
execute as @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}}] at @s run tp @e[type=item,limit=1,sort=nearest,distance=..1] @s

#modify data of the items on the item_catalyst
#glowing
execute as @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}}] at @s run data merge entity @e[type=item,limit=1,sort=nearest,distance=..1] {Glowing:1b}
#unpickable & no dispawn & no motion
execute as @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}}] at @s unless entity @a[scores={ha_playerSneak=1..},distance=..1] run execute as @e[type=item,limit=1,sort=nearest,distance=..1] run data merge entity @s {PickupDelay:-1,Age:-32768,Motion:[0.0d,-0.04d,0.0d]}

#modify if a player sneaking
execute as @a[scores={ha_playerSneak=1..}] at @s if entity @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}},distance=..1] run execute as @e[type=marker,nbt={data:{ha:{item_catalyst:1b}}},distance=..1] run data merge entity @e[type=item,distance=..1,limit=1,sort=nearest] {PickupDelay:0}
#reset sneaking
scoreboard players set @a ha_playerSneak 0
