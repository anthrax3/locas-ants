--- TActor class, anything visible or positionable in the game world
-- and any game object inherits from TActor 
-- (PURE Lua)

local TActor = {}
     
-- PRIVATE class fields
local fSomething = 0
  
-- PRIVATE class methods
local function doSomthing ()
  
end

-- PUBLIC class methods

--- Creating a new instance for TActor class
function TActor.create()
  local obj = {}
  --PRIVATE instance fields
  local fFooFoo = 0
  
  --PUBLIC properties
  obj.position = { x = 1, y = 1 }
  obj.radius = 1
  
  --PUBLIC functions
  function obj.getClassType() return TActor end
  function obj.getClassParent() return nil end
  
  function obj.init() 
  end
  function obj.update()  
  end
  function obj.draw() 
  end
  
  return obj
end

return TActor