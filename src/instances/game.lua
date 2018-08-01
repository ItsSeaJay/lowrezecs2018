local gamera = require "lib.gamera"
local Instance = require "lib.concord.instance"
local UpdateSystem = require "src.systems.Update"
local DrawSystem = require "src.systems.Draw"
local InputSystem = require "src.systems.Input"
local CameraSystem = require "src.systems.Camera"
local PlayerEntity = require "src.entities.Player"
local CameraEntity = require "src.entities.Camera"
local cameraSystem = CameraSystem()
local camera = CameraEntity()
local GameInstance = Instance()

cameraSystem:init(camera)

-- Add all the entities to the instance
GameInstance:addEntity(PlayerEntity)

-- Add all the systems and activate them
-- events occur in the order they are added to the instance
GameInstance:addSystem(UpdateSystem(), "update")
GameInstance:addSystem(InputSystem(), "update")
GameInstance:addSystem(cameraSystem, "draw", "push")
GameInstance:addSystem(DrawSystem(), "draw")
GameInstance:addSystem(cameraSystem, "draw", "pop")

return GameInstance
