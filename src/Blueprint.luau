--!nonstrict

local Blueprint = {}

export type BlueprintObject = {
    [string]: any,
}

-- Create a new Blueprint table with given properties
--properties: The property table used to create the Blueprint
function Blueprint.new(properties: {string: any})
    local new: BlueprintObject = {}

    for i, v in pairs(properties) do
        new[i] = v
    end

    return new
end

-- Create a new Instance with specified Blueprint object
--className: The class name of the Instance to create. It must be exactly the same as the class name used in Roblox.
--bp: The BlueprintObject containing the properties to set on the new Instance.
--parent: The parent Instance to insert the new Instance into. Defaults to workspace if not provided.
function Blueprint:Insert(className:string, bp:BlueprintObject, parent:Instance?|DataModel?)
    local p = parent or workspace
    local object = Instance.new(className, p)

    for i, v in pairs(bp) do
        local property = i
        local value = v

        -- find a property of the object that is same as 'property' and change its value to 'value'
        pcall(function()
            object[property] = value
        end)
    end
end

return Blueprint