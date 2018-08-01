Component = require "lib.concord.component"
System = require "lib.concord.system"
DrawSystem = System({
	Sprite
})

function DrawSystem:draw()
	-- Draw entities with a sprite component
end

return DrawSystem