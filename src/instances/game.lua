local Instance = require "lib.concord.instance"
local UpdateSystem = require "src.systems.update"
local DrawSystem = require "src.systems.draw"
local PlayerEntity = require "src.entities.player"
local GameInstance = Instance()

GameInstance:addEntity(PlayerEntity)
GameInstance:addSystem(UpdateSystem(), "update")
GameInstance:addSystem(DrawSystem(), "draw")

return GameInstance