local classlib = require("classes")
local animType = require("animal")
local cat = classlib.class(animType)


function cat:init(_name, _color)
    self.super:init(_name)
    self._mAnimColor = _color
end

return cat