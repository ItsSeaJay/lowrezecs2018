local concord = require "lib.concord"
local maid64 = require "lib.maid64"
local player = require "src.entities.player"
local Position = require "src.components.position"

function love.load()
	-- Initialise concord
	concord.init()

	alien = maid64.newImage("res/placeholders/alien.png")

	-- Configure Maid64 to run at 64 pixels squared
	maid64.setup(64)
end

function love.update(deltaTime)
	player:get(Position):move(1 * deltaTime, 1 * deltaTime)
end

function love.draw()
	-- Scale everything inbetween start() and finish()
	-- to the target resolution
	maid64.start()
		-- Draw a sprite at the player's current position
		love.graphics.draw(alien, player:get(Position).x, player:get(Position).y)

		-- Draw a circle at the mouse's position relative to scaling
		love.graphics.circle("fill", maid64.mouse.getX(), maid64.mouse.getY(), 2)
	maid64.finish()
end

function love.keypressed(key, scancode, isRepeat)
	if key == "escape" and not isRepeat then
		love.event.quit()
	end
end

function love.resize(width, height)
	-- Alert Maid64 that the dimensions of the canvas changed
	maid64.resize(width, height)
end