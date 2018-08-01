local Component = require "lib.concord.component"
local Position = require "src.components.position"
local System = require "lib.concord.system"
local UpdateSystem = System({})

function UpdateSystem:update(deltaTime)
	for _, entity in ipairs(self.pool.objects) do
		-- print("moo")
	end
end

return UpdateSystem