local System = require "lib.concord.system"
local Component = require "lib.concord.system"
local Camera = require "src.components.Camera"
local Position = require "src.components.Position"
local CameraSystem = System({
	Camera,
	Position
})

function CameraSystem:update(deltaTime)
	for _, entity in ipairs(self.pool.objects) do
		local camera = entity:get(Camera)
		local position = entity:get(Position)

		-- Lock the camera's position to the position of the entity
		camera.camera:setPosition(position.x, position.y)
	end
end

function CameraSystem:draw(callback)
	for _, entity in ipairs(self.pool.objects) do
		local camera = entity:get(Camera)

		-- Lock the camera's position to the position of the entity
		camera.camera:draw(callback)
	end
end

return CameraSystem