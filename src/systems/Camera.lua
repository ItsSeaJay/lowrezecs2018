Component = require "lib.concord.component"
Camera = require "src.components.camera"
System = require "lib.concord.system"
CameraSystem = System({
	Camera
})

function CameraSystem:set(camera)
	-- Ensure that only one camera view is shown at once
	self.activeCamera = camera
end

function CameraSystem:push()
	self.activeCamera:push()
end

function CameraSystem:pop()
	self.activeCamera:pop()
end

return CameraSystem
