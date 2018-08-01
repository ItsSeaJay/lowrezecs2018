local Entity = require "lib.concord.entity"
local Position = require "src.components.Position"
local Sprite = require "src.components.Sprite"
local MovementController = require "src.components.MovementController"
local PlayerEntity = Entity()

-- A player has the following components:
PlayerEntity:give(Position, 0, 0) -- Start in the top-left
PlayerEntity:give(Sprite, "res/placeholders/alien.png")
PlayerEntity:give(MovementController, 4)

return PlayerEntity