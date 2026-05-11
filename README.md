<div align="center">

# Blueprint

A lightweight Roblox module for creating Instances with predefined properties.

<a href="./docs/NAV.md">Documentation</a>
&nbsp;|&nbsp;
<a href="./docs/installation.md">Installation</a>
&nbsp;|&nbsp;
<a href="./LICENSE.md">License</a>

</div>

---

## Why Blueprint?

Creating Instances manually can become repetitive and messy:

```lua
local part = Instance.new("Part")
part.Name = "CoolPart"
part.Anchored = true
part.Parent = workspace
```

Blueprint makes this cleaner and easier to read:

```luau
local Blueprint = require(path.to.Blueprint)
local myProperties = Blueprint.new({
	Name = "CoolPart",
	Anchored = true,
})

Blueprint:Insert("Part", myProperties, workspace)
```

Create the Blueprint once, and use it as many times as you want.

---

## Features

- Simple Instance creation
- Property assignment using tables
- Cleaner and more readable code
- Lightweight
- Typed Luau support

---

## Installation

See the full installation guide here:

- [Installation Guide](./docs/installation.md)

Supports:
- Roblox Studio
- Rojo

---

## Documentation

Full documentation can be found in the `docs` folder.

- [Documentation Home](./docs/NAV.md)

---

## Example

```luau
local Blueprint = require(game.ReplicatedStorage.Blueprint)

local myBlueprint = Blueprint.new({
	"Name" = "MyPart",
	"Size" = Vector3.new(5, 5, 5),
	"Color" = Color3.fromRGB(255, 0, 0),
	"Anchored" = true
})

local Part = Blueprint:Insert("Part", myBlueprint, workspace)
```

---

## License

Blueprint is licensed under the MIT License.

See [LICENSE](./LICENSE.md) for more information.
