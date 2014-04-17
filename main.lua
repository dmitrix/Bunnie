require "drawpeanut"
require "loadpeanut"
require "bunnies"
require "playerPeanut"
require "animation"
require "death"

function love.load()
	loadPeanut()
	storysplash = false;
	splashed = false;
	credited = false;
end
function love.draw()
	drawPeanut()
end
function love.update(dt)
	if pause == false then
		world:update(dt);
		bunnies()
		playerControls()
		playerJumpCheck()
	
		if splashed == false then
			splashed = true;
		end


		px, py = objects.monster.body:getPosition()
	

		animationCalc()
		drawCalc()
		if b1y > 545 - (bunnyh/2) then
			bunnygrounded1 = true
		else
			bunnygrounded1 = false
		end	
		if b2y > 545 - (bunnyh/2) then
			bunnygrounded2 = true
		else
			bunnygrounded2 = false
		end
		if b3y > 545 - (bunnyh/2) then
			bunnygrounded3 = true
		else
			bunnygrounded3 = false
		end
		--gameT = gameT + 1
		--if gameT > 10 then
			death()
		-- send
		
	end
end


function love.keypressed(key)
	if (key == "up" or key == "w" or key == " ") and pground == true then
		objects.monster.body:applyLinearImpulse(0, -6000);
		love.audio.play(jump);
	end
	if (key == "1" or key == "2" or key == "3") then
		if cauliflower == true then
			cauliflower = false
		else
			cauliflower = true
		end
	end

	-- Pause/Unpause
	if (key == " ") and pause == true then
		pause = false;
	end
	if (key=="p") then
		if pause == true then
			pause = false;
			resumeMusic();
		else
			pause = true;
			pauseMusic();
		end
	end
	
	if (key == "escape") then
		love.event.quit();
	end
	
	
	if (key=="c") then
		if pause == true then
			pause = false;
			credited = false;
			resumeMusic();
		else
			pause = true;
			pauseMusic();
			credited = true;
		end
	end

	--Mute function
	if (key == "m") then
		if mute == true then
			mute = false;
			love.audio.setVolume(0.2)
		else
			mute = true;
			love.audio.setVolume(0)
		end
	end
end

