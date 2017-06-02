--- TMaterial class, 
-- TMaterial represent world objects, that can be rocks for obstacles, or water and food as resources
-- (PURE Lua)

local api = require('code.api')
local TActor = require('code.actor')
local vec = require('extlibs.vec2d')
local map = require('code.map')


-- Sorry of the Delphi-like class styles :P
local TMaterial = {}

--- Creating a new instance for TMaterial class
function TMaterial.create()
  local obj = TActor.create()
  --public fields
  obj.radius = 20  
  obj.name = "obstacle"
  obj.obstacle = true              -- true, you shall not pass 
  obj.friction = 0
  obj.storing = false              -- false store only equal, true store mutiple like caves   
  obj.storage = {}                 -- resource stores, keyName=number pairs.
  obj.resourceCount = 0            -- amount of resources units integer
  obj.materialRatioMultiplier = 0  -- how much the visual ratio represent the material content, 0 = constant radius size
  obj.color = {100,100,100,100}  
  
  --private instance fields  
  local fCircle
  -- private funcitons
  -- public functions
    --PUBLIC functions
  function obj.getClassType() return TMaterial end
  function obj.getClassParent() return TActor end
    
  function obj.init()
    fCircle = api.newCircle(obj.position.x, obj.position.y, obj.radius )  
  end
  function obj.update()  
    if obj.materialRatioMultiplier ~= 0 then obj.radius = obj.materialCount * obj.materialRatioMultiplier end
  end
  function obj.draw() 
    api.drawCircle(fCircle)
  end
  
  return obj
end

function TMaterial.createObstacle(x,y, size)
  local mat = TMaterial.create()
  mat.position.x = x
  mat.position.y = y
  mat.radius = size
  return mat
end

return TMaterial