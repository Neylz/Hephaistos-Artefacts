# Introducing
### Using custom crafts on the altar
Hephaistos Rituals is a new craft system that give you possibility to adds your own crafts on it. Alone it's useless but combined with others datapack from official or non-official Hephaistos suits, it become fitting for RP adventures.

You can also just offer to players to have a new way to crafts the custom items you developed. Having the crafts files without Hephaistos isn't a problem ! If you wants, you can also just add compatibility for the players !

### Benefits of Using the Hephaistos' altar
The altar is used to craft items with 9 items - like in a crafting table - but you have the opportunity in addition to having very cool animations and a magical manufacturing method, to craft items with NBTs; YES ! It's NBT crafting time ! (So you can finally craft a custom book with instructions or commands in it)

### Structure of a craft
Each of them are identified by two factors. The first is the namespace. We preconize to use the default namespace of your datapack but you can also choose a new one.

Secondly each craft **must** have a unique id in their namespace. So you can't have two crafts named `namespace:example` but you can have an other craft named "example" in an other namespace.

So a craft would have this IDs :
```md
# ID : myItem
# namespace : testNamespace
# complete ID : myItem:testNamespace
```



# Implements new crafts
## Global Strucure
Here is an exemple of strucure for your datapack; after adding the crafts you can add your own features.
```
root/
    data/
        <namespace>/
            functions/
                hscrafts/
                    tick.mcfunction
                    recipes.list.mcfunction
                    recipes/
                        <recipe1>.mcfunction
                        <recipe2>.mcfunction
                        <recipe3>.mcfunction
        
        minecraft/
            tags/
                functions/
                    tick.json

pack.mcmeta
```

## Tick function
The tick fuction is used to detect when an altar need to run the functions of your crafts.

So in `root/data/minecraft/tags/functions/tick`, insert the path of `call.mcfunction`. Here in our exemple it will looks like this:
```json
{
    "values": [
        "<namespace>:hscrafts/tick"
    ]
}
```

Inside the `tick.mcfunction`, you can just copy and past this code, replacing \<YOURNAMESPACE> by the name of your namespace. It will be used as fake players and scoreboards names.

⚠ Set this to the namespace name of your datapack if you don't know precisely what you are doing.

```mcfunction
# crafts namespace : <YOURNAMESPACE>

# import
execute if score loadingCrafts hs_data matches 1 unless score <YOURNAMESPACE> hs_namespaceLoaded matches 1 run function <YOURNAMESPACE>:crafting/recipes.list
execute if score loadingCrafts hs_data matches 1 unless score <YOURNAMESPACE> hs_namespaceLoaded matches 1 run scoreboard players set <YOURNAMESPACE> hs_namespaceLoaded 1


execute if score craftingOnAltar hs_data matches 0.. unless score <YOURNAMESPACE> hs_crafting_namesapceCheked matches 1 run execute as @e[type=marker,nbt={data:{ha:{altar_center:1b}}}] at @s if score @s hs_altarId = craftingOnAltar hs_data run function <YOURNAMESPACE>:crafting/recipes.list
scoreboard players set <YOURNAMESPACE> hs_crafting_namesapceCheked 1
```

## Recipes.list function

In Global Structure section as the name of `recipes.list.mcfuntion`, in it you will put all the recipes function (animations of the crafts not included).
So if you want to temporary delete a recipe for testing/other reasons, you can just delete the line calling the recipe's function without delete the files or more code.


If you want to add a new craft you just need to add a command like in that :
```mcfunction
execute as @s at @s run function <ressource location>
```

So in the Global Strucure exemple if all the crafts are loaded, `recipes.list.mcfunction` will looks like this :

```mcfunction
# list of all crafts loaded
# delete here the function line of a specific craft to temporary disable it

execute as @s at @s run function <namespace>:crafting/recipes/helpbook
```

Here again, you will have to change \<namespace> by the name you used as namespace.


## Add a new craft

Here we are ! We have now all the necessary structure to add all crafts we want !
Go to [this page](https://github.com/Neylz/Hephaistos-Rituals/blob/main/data/hephaistos/functions/libs/APIcraft.md) for all the informations
