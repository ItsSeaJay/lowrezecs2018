local Entity = require "lib.concord.entity"
local Position = require "src.components.position"
local Sprite = require "src.components.sprite"
local PlayerEntity = Entity()

-- A player has the following components:
PlayerEntity:give(Position, 0, 0)
PlayerEntity:give(Sprite, "res/placeholders/alien.png")

return PlayerEntity