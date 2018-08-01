local Entity = require "lib.concord.entity"
local Position = require "src.components.position"
local Sprite = require "src.components.sprite"
local player = Entity()

player:give(Position, 0, 0)
player:give(Sprite, "res/placeholders/alien.png")

return player