# @private
#alias entity altarCenterToAnimate @e[type=marker,tag=hs_animation]

# ====== setup the animation ======
execute if score animation.timer.tick hs_data matches 0 as @e[type=marker,tag=hs_animation] at @s run tp @e[type=item,nbt={Glowing:1b},limit=1,sort=nearest] ~ ~ ~
execute if score animation.timer.tick hs_data matches 0 as @e[type=marker,tag=hs_animation] at @s run execute as @e[type=item,distance=..7,nbt={Glowing:1b}] run data modify entity @s Invulnerable set value 1b


# =========== animation ===========
execute if score animation.timer.tick hs_data matches 0 run playsound minecraft:item.trident.thunder block @a ~ ~ ~
execute if score animation.timer.tick hs_data matches 0..9 run particle flame ~ ~ ~ .1 .1 .1 .1 500 force

execute if score animation.timer.tick hs_data matches 40 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 40 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true

execute if score animation.timer.tick hs_data matches 42 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 42 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true

execute if score animation.timer.tick hs_data matches 46 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 46 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true

execute if score animation.timer.tick hs_data matches 48 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 48 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true

execute if score animation.timer.tick hs_data matches 68 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 68 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true

execute if score animation.timer.tick hs_data matches 76 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run summon minecraft:lightning_bolt ~ ~ ~
execute if score animation.timer.tick hs_data matches 76 as @e[type=marker,tag=hs_animation] at @s positioned ~ ~-0.1 ~ run effect give @a[distance=..21] blindness 1 255 true



# ===== end of the animation =====
## delete all items on altar
execute if score animation.timer.tick hs_data matches 100 as @e[type=marker,tag=hs_animation] at @s run kill @e[type=minecraft:item,distance=..7,nbt={Glowing:1b}]

## summon item !!! WITH TAG {Tags:["hs_crafted"]} !!!
execute if score animation.timer.tick hs_data matches 100 as @e[type=marker,tag=hs_animation] at @s run summon minecraft:item ~ ~4 ~ {Item: {id: "minecraft:nether_star", Count: 9b},Tags:["hs_crafted"]}

## reset altars (tags)
execute if score animation.timer.tick hs_data matches 100 as @e[type=marker,tag=hs_animation] at @s run tag @e[type=minecraft:marker,distance=..7] remove hs_crafting
execute if score animation.timer.tick hs_data matches 100 run tag @e[type=marker,tag=hs_animation] remove hs_animation

## finish the process & prevent double crafts
execute if score animation.timer.tick hs_data matches 100 run scoreboard players set craftsChecked hs_crafting_itemsRAM -2

## loop if it isnt the end
execute unless score animation.timer.tick hs_data matches 100 run schedule function hephaistos:crafting/animations/testanimate/loop 1t