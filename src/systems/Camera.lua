Component = require "lib.concord.component"
System = require "lib.concord.system"
Camera = require "src.components.Camera"
CameraSystem = System({
	Camera
})

function CameraSystem:init(entity)
	-- Ensure that only one camera view is shown at once
	self.activeCamera = entity
end

function CameraSystem:push()
	self.activeCamera:push()
end

function CameraSystem:pop()
	self.activeCamera:pop()
end

return CameraSystem
