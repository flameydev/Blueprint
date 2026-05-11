# Blueprint API

## Blueprint.new()

`Blueprint.new()` is used to create a new BlueprintObject that can be used to set the predefined functions.
It takes in one table as the parameter, which is used to create the BlueprintObject. The table should be structured like this:

```luau
local properties = {
    "Color" = Color3.fromRGB(0, 255, 255)
    "Size" = Vector3.new(5, 5, 5)
    "Anchored" = true
    "Position" = Vector3.new(0, 10, 0)
    "Shape" = Enum.PartType.Ball
}
```

Then, use `Blueprint.new()` to create the BlueprintObject:

```luau
local bprint = Blueprint.new(properties)
```

Blueprint is not limited to only BaseParts, you can create any Instance. Make sure the properties you input are valid for the selected instance.

## Blueprint:Insert()

This function is used to insert an Instance to containers (DataModels or Instances).
It takes in 3 parameters: `className`, `bp`, `parent`

`className` is a string of the ClassName of the Instance you want to insert. It must be exactly the same as the one used by Roblox.

`bp` is the BlueprintObject you create using `Blueprint.new()`. Make sure to pass in the BlueprintObject and not a Table.

`parent` is the DataModel or Instance where you want the created instance to be parented to. By default it uses `workspace`. You can also mention the Parent in the properties table when creating the BlueprintObject, but this method is reccomended if you create multiple Instances with same properties in different locations, so you don't have to create many BlueprintObjects.

Below is an example of using the Blueprint:Insert() function, with the BlueprintObject from the previous examples.

```luau
Blueprint:Insert("Part", bprint, workspace.SpawnMarker)
```
