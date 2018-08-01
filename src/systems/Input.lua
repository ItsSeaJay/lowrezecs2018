local Component = require "lib.concord.component"
local System = require "lib.concord.system"
local MovementController = require "src.components.MovementController"
local Position = require "src.components.Position"
local InputSystem = System({
	MovementController
})

function InputSystem:update(deltaTime)
	local up = love.keyboard.isDown("w")
	local down = love.keyboard.isDown("s")
	local left = love.keyboard.isDown("a")
	local right = love.keyboard.isDown("d")

	print(up)

	for _, entity in ipairs(self.pool.objects) do
		local controller = entity:get(MovementController)
		local position = entity:get(Position)

		position.y = position.y + 1
	end
end

return InputSystem