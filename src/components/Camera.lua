local Component = require "lib.concord.component"
local gamera = require "lib.gamera"
local Camera = Component(function (entity, x, y, right, bottom, width, height)
	entity.camera = gamera.new(x, y, right, bottom)
	entity.camera:setWindow(x, y, width, height)
end)

return Camera
