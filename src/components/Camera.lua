local gamera = require "lib.gamera"
local Component = require "lib.concord.component"
local Camera = Component(function (entity, x, y, width, height)
	entity.camera = gamera.new(x, y, width, height)
end)

return Camera