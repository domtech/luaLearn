local classeslib = require("classes")

local AnimalType = require("animal")

local CatType = require("cat")

local animInst = AnimalType:new("AnimBaseInst")
print(animInst._mAnimalName, animInst._mId)

local catInst = CatType:new("cat","yellow");
print(catInst._mAnimColor,catInst._mId, catInst._mAnimalName)
