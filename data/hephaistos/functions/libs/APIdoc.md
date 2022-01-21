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

## Caller
The caller is a looped function checking if an altar need to check your crafts or import them.

So in `root/data/minecraft/tags/functions/tick`, insert the path of `call.mcfunction`. Here in our exemple it will looks like this:
```json
{
    "values": [
        "<namespace>:hscrafts/call"
    ]
}
```


# Effects & Visuals

You can adds your visuals  or annimations easly in the craft !

### Create my own with Hephaistos tools

-> coming soon