local Component = require "lib.concord.component"
local MovementController = Component(function (entity, speed)
	entity.speed = speed
end)

return MovementController