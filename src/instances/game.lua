local Instance = require "lib.concord.instance"
local UpdateSystem = require "src.systems.Update"
local DrawSystem = require "src.systems.Draw"
local InputSystem = require "src.systems.Input"
local PlayerEntity = require "src.entities.Player"
local GameInstance = Instance()

-- Add all the entities to the instance
GameInstance:addEntity(PlayerEntity)

-- Add all the systems and activate them
GameInstance:addSystem(UpdateSystem(), "update")
GameInstance:addSystem(InputSystem(), "update")
GameInstance:addSystem(DrawSystem(), "draw")

return GameInstance
