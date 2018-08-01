local Entity = require "lib.concord.entity"
local Position = require "src.components.position"
local Player = Entity()

Player:give(Position, 0, 0)

return Player