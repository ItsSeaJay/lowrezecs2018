local Component = require "lib.concord.component"
local Position = Component(function (entity, x, y)
	entity.x = x
	entity.y = y
end)

function Position:move(deltaX, deltaY)
	self.x = self.x + deltaX
	self.y = self.y + deltaY
end

return Position