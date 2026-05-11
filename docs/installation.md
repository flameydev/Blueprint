# Installation

## How to Install

### Roblox Studio

1. Copy [Blueprint.luau](../src/Blueprint.luau) from the `src` folder.
2. Create a new ModuleScript in your Roblox place, preferably inside `ReplicatedStorage`.
3. Paste the copied script into it.
4. Require Blueprint wherever you need to use it.

```lua
local Blueprint = require(game.ReplicatedStorage.Blueprint)
```

---

### Rojo

#### 1. Clone the Repository

```bash
git clone https://github.com/flameydev/Blueprint.git
```

#### 2. Open the Project

Open the folder in VS Code.

#### 3. Start Rojo

```bash
rojo serve
```

#### 4. Add Blueprint to Your Project

Move or map `Blueprint.luau` into your project's source folder.

Example:

```txt
src/
├── ReplicatedStorage/
│   └── Blueprint.luau
```

#### 5. Require Blueprint

```lua
local Blueprint = require(ReplicatedStorage.Blueprint)
```
