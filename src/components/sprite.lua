local maid64 = require "lib.maid64"
local Component = require "lib.concord.component"
local Sprite = Component(function (entity, path)
	entity.sprite = maid64.newImage(path)
end)

return Sprite