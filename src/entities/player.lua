local Entity = require "lib.concord.entity"
local Position = require "src.components.Position"
local Sprite = require "src.components.Sprite"
local MovementController = require "src.components.MovementController"
local PlayerEntity = Entity()

-- Create local versions of constructor parameters so they can be reused
local x = 0
local y = 0
local speed = 32

-- A player has the following components:
PlayerEntity:give(Position, x, y) -- Start in the top-left
PlayerEntity:give(Sprite, "res/placeholders/alien.png")
PlayerEntity:give(MovementController, speed)

return PlayerEntity
