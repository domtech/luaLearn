local classes = {}

classes.Object = {}

function classes.Object:alloc(masterable)
    baseClass = {}
    setmetatable(baseClass, {__index = baseClass})
    return baseClass
end

function classes.Object:init(...)
end


function classes.class(baseClass)

    local classDef = {}
    baseClass = baseClass or classes.Object
    setmetatable(classDef, {__index = baseClass})

    function classDef:alloc(masterable)
        --{super = baseClass:alloc(masterable)}
        instance = {}
        setmetatable(instance, {__index = classDef, __newindex = masterable})
        instance.super = baseClass:alloc(masterable)
        return instance
    end

    function classDef:new(...)
        local instance = {}
        setmetatable(instance, {__index = classDef, __newindex = baseClass})
        instance.super = baseClass:alloc(baseClass)
        instance:init(...)
        return instance
    end
    return classDef
end


return classes