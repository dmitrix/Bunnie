function love.load()
	song = love.audio.newSource("theme.ogg","stream");
	image = love.graphics.newImage("splashscreen1.png");
	song:setLooping(true);
	love.audio.play(song);
end

function love.draw()
	love.graphics.draw(image,-100,0);
end

function keypressed(end)
	if end == "escape" then
		love.exit();
end
end