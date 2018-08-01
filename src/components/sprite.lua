local Component = "lib.concord.component"
local Sprite = Component(function (entity, path)
	entity.sprite = love.graphics.newImage(path)
end)

return Sprite