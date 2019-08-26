--Start of Global Scope---------------------------------------------------------
print('AppEngine Version: ' .. Engine.getVersion())

local DELAY = 1000 -- ms between visualization steps for demonstration purpose

-- Creating viewer
local viewer = View.create()

local regionDecoration = View.PixelRegionDecoration.create()
regionDecoration:setColor(0, 150, 0, 150)

local pointDecoration = View.ShapeDecoration.create()
pointDecoration:setLineColor(0, 255, 0)
pointDecoration:setPointType('CROSS')
pointDecoration:setPointSize(15)

--End of Global Scope-----------------------------------------------------------

--Start of Function and Event Scope---------------------------------------------

local function main()
  -- Loading image from resources.
  local img = Image.load('resources/puzzle.bmp')

  -- Create seed points
  local seedPoints = {
    Point.create(290, 230),
    Point.create(400, 327)
  }

  -- Show image and seed points
  viewer:clear()
  local imview = viewer:addImage(img:multiplyAddConstant(0.5, 127))
  viewer:addShape(seedPoints[1], pointDecoration, nil, imview)
  viewer:addShape(seedPoints[2], pointDecoration, nil, imview)
  viewer:present()
  Script.sleep(DELAY)

  -- Create seed region
  local seed = Image.PixelRegion.createFromPoints(seedPoints, img)

  -- Expand seed to entire objects (pixel value below 100)
  local region = img:growRegion(seed, nil, 100)

  -- Show result, lighten the image to make region decorations more visible.
  viewer:clear()
  imview = viewer:addImage(img:multiplyAddConstant(0.5, 127))
  viewer:addPixelRegion(region, regionDecoration, nil, imview)
  viewer:present()
end

--The following registration is part of the global scope which runs once after startup
--Registration of the 'main' function to the 'Engine.OnStarted' event
Script.register('Engine.OnStarted', main)

--End of Function and Event Scope--------------------------------------------------
