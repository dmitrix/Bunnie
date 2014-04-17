function drawCalc()
		-- Find the upper left coordinates. used in drawing.
		-- Largely useless now that rotation is removed.
		pvertx1, pverty1 = objects.monster.body:getWorldPoints(objects.monster.shape:getPoints());
		b3x, b3y = objects.bunny3.body:getWorldPoints(objects.bunny1.shape:getPoints());	
		b2x, b2y = objects.bunny2.body:getWorldPoints(objects.bunny2.shape:getPoints());
		b1x, b1y = objects.bunny1.body:getWorldPoints(objects.bunny1.shape:getPoints());
end

function drawPeanut()
	--draw background:
	love.graphics.setBackgroundColor(89,191,265);
	love.graphics.draw(daysky, 0, 0);
	
	
	--draw ground:
	love.graphics.setColor(43,205,110);
	love.graphics.draw(groundImage, 0, 560);

	
	
	--Reset Colors:
	love.graphics.setColor(255,255,255);
	love.graphics.draw(goat, 50.5, 456.5, 0, 1, 1);
	
	
	animationDraw()
	
		

	-- Collision box drawing
	if cauliflower == true then
		love.graphics.polygon("line", objects.bunny1.body:getWorldPoints(objects.bunny1.shape:getPoints()))
		love.graphics.polygon("line", objects.bunny2.body:getWorldPoints(objects.bunny2.shape:getPoints()))
		love.graphics.polygon("line", objects.bunny3.body:getWorldPoints(objects.bunny3.shape:getPoints()))
		love.graphics.polygon("line", objects.monster.body:getWorldPoints(objects.monster.shape:getPoints()))	
		love.graphics.polygon("line", objects.ground.body:getWorldPoints(objects.ground.shape:getPoints()));
		love.graphics.polygon("fill", objects.leftWall.body:getWorldPoints(objects.leftWall.shape:getPoints()));
		love.graphics.polygon("fill", objects.rightWall.body:getWorldPoints(objects.rightWall.shape:getPoints())); 
	end
	
	

	
	--print score:
	love.graphics.print("Cute Little Bunnies Killed: ",10,10);
	love.graphics.print(score,250,10);
	
	if pause == true and splashed == false then
		love.graphics.draw(splash);
	elseif pause == true and credited == true then
		love.graphics.draw(credits);
	elseif pause == true then 
		--love.graphics.draw(splash)
		love.graphics.print("PAUSED!", 500,250);
	end 
	
	love.graphics.print("M: MUTE", 920, 10);
	love.graphics.print("C: CREDITS", 920, 25);
	love.graphics.print("P: PAUSE", 920, 40);
end

function drawSplash()
	love.graphics.draw(splash);
end