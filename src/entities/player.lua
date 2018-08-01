local Entity = require "lib.concord.entity"
local Position = require "src.components.Position"
local Sprite = require "src.components.Sprite"
local Camera = require "src.components.Camera"
local MovementController = require "src.components.MovementController"
local PlayerEntity = Entity()
-- Create local versions of constructor parameters so they can be reused
local x = 24
local y = 24
local speed = 16

-- A player has the following components:
PlayerEntity:give(Position, x, y) -- Start in the top-left
PlayerEntity:give(Sprite, "res/placeholders/alien.png")
PlayerEntity:give(MovementController, speed)
PlayerEntity:give(Camera, x, y, 128, 128)

return PlayerEntity
