local Component = require "lib.concord.component"
local Position = require "src.components.Position"
local Sprite = require "src.components.Sprite"
local System = require "lib.concord.system"
local gamera = require "lib.gamera"
local maid64 = require "lib.maid64"
local camera = gamera.new(0, 0, 64, 64)
camera:setWindow(0, 0, 64, 64)
-- Create a system filtered by entities that have both a sprite and position
local DrawSystem = System({
	Position,
	Sprite
})

function DrawSystem:draw()
	-- Draw entities with a sprite component at their current position
	maid64.start()

	camera:draw(function (left, top, width, height)
		for _, entity in ipairs(self.pool.objects) do
			local position = entity:get(Position)
			local sprite = entity:get(Sprite)

			love.graphics.draw(sprite.image, position.x, position.y)
		end
	end)

	maid64.finish()
end

return DrawSystem
