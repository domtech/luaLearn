local classlib = require("classes")

local animal = classlib.class()

local _mAnimalNum = 0

function animal:init(_name)
    self._mAnimalName = _name
    _mAnimalNum = _mAnimalNum + 1
    self._mId = _mAnimalNum
end

return animal