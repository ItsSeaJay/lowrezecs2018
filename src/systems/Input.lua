local Component = require "lib.concord.component"
local System = require "lib.concord.system"
local MovementController = require "src.components.MovementController"
local Position = require "src.components.Position"
local InputSystem = System({
	MovementController,
	Position
})

function InputSystem:update(deltaTime)
	local up = love.keyboard.isDown("w")
	local down = love.keyboard.isDown("s")
	local left = love.keyboard.isDown("a")
	local right = love.keyboard.isDown("d")

	for _, entity in ipairs(self.pool.objects) do
		local controller = entity:get(MovementController)
		local position = entity:get(Position)

		-- Horizontal
		if up then
			position.y = position.y - controller.speed * deltaTime
		elseif down then
			position.y = position.y + controller.speed * deltaTime
		end

		-- Vertical
		if left then
			position.x = position.x - controller.speed * deltaTime
		elseif right then
			position.x = position.x + controller.speed * deltaTime
		end
	end
end

return InputSystem