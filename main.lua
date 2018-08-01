local maid64 = require "maid64"

function love.load()
	-- Configure Maid64 to run at 64 pixels squared
	maid64.setup(64)
end

function love.update(deltaTime)

end

function love.draw()
	-- Scale everything inbetween start() and finish()
	-- to the target resolution
	maid64.start()
		love.graphics.circle("fill", maid64.mouse.getX(), maid64.mouse.getY(), 2)
	maid64.finish()
end

function love.resize(width, height)
	-- Alert Maid64 that the dimensions of the canvas changed
	maid64.resize(width, height)
end