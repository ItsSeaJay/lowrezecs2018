local Entity = require "lib.concord.entity"
local Camera = require "src.components.Camera"
local CameraEntity = Entity()

CameraEntity:give(Camera, 0, 0, 64, 64, 64, 64)

return CameraEntity
