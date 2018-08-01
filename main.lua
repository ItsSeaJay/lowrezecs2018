local concord = require "lib.concord"
local maid64 = require "lib.maid64"
local game = require "src.instances.game"

function love.load()
	-- Initialise the game's libraries and systems
	concord.init()

	-- Configure maid64 to run at 64 pixels squared
	maid64.setup(64)
end

function love.update(deltaTime)
	game:emit("update", deltaTime)
end

function love.draw()
	-- Scale everything inbetween start() and finish()
	-- to the target resolution
	maid64.start()
		-- Draw a circle at the mouse's position relative to scaling
		love.graphics.circle("fill", maid64.mouse.getX(), maid64.mouse.getY(), 2)
	maid64.finish()
end

function love.keypressed(key, scancode, isRepeat)
	-- TODO: tie this to debug mode
	if key == "escape" and not isRepeat then
		love.event.quit()
	end
end

function love.resize(width, height)
	-- Alert maid64 that the dimensions of the canvas changed
	-- This will cause it to fill the window
	maid64.resize(width, height)
end