Component = require "lib.concord.component"
Position = require "src.components.position"
Sprite = require "src.components.sprite"
System = require "lib.concord.system"
-- Create a system filtered by entities that have both a sprite and position
DrawSystem = System({
	Position,
	Sprite
})

function DrawSystem:draw()
	-- Draw entities with a sprite component at their current position
	for _, entity in ipairs(self.pool.objects) do
		local position = entity:get(Position)
		local sprite = entity:get(Sprite)

		love.graphics.draw(sprite.image, position.x, position.y)
	end
end

return DrawSystem