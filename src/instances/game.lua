local Instance = require "lib.concord.instance"
local UpdateSystem = require "src.systems.update"
local player = require "src.entities.player"
local game = Instance()

game:addEntity(player)
game:addSystem(UpdateSystem())

return game