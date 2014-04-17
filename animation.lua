function animationCalc()


	-- Player Stuuuff
	if pttT > 20 then
		if ptt == true then
			ptt = false
		else
			ptt = true
		end
	pttT = 0
	end
end

function animationRec()
	-- Player stuff
	monster1Left = love.graphics.newImage("res/player/monster1left.png");
	monster1Right = love.graphics.newImage("res/player/monster1right.png");
	monster2Left = love.graphics.newImage("res/player/monster2left.png");
	monster2Right = love.graphics.newImage("res/player/monster2right.png");
	monsterjumpleft = love.graphics.newImage("res/player/monsterjumpleft.png");
	monsterjumpright = love.graphics.newImage("res/player/monsterjumpright.png");
	credits = love.graphics.newImage("res/splash/credits.png");
	story = love.graphics.newImage("res/splash/intro.png");

	daysky = love.graphics.newImage("res/world/sky.png");
	--nightsky = love.graphics.newImage("res/world/night.png");
	groundImage = love.graphics.newImage("res/world/ground.png");

	bunnyDead = love.graphics.newImage("res/bunny/hit.png");
	bunnyLeft = love.graphics.newImage("res/bunny/bunnyleft.png");
	bunnyJumpLeft = love.graphics.newImage("res/bunny/bunnyjumpleft.png");
	bunnyJumpRight = love.graphics.newImage("res/bunny/bunnyjumpright.png");
	bunnyRight = love.graphics.newImage("res/bunny/bunnyright.png");
	goat = love.graphics.newImage("res/goat/goat.png")
	splash = love.graphics.newImage("res/splash/splashscreen1.png")
end

function animationDraw()
	--draw player:	
	
	-- facing right
	if pRight == true then
		-- grounded
		if pground == true then
			-- walking right frame A
			if ptt == true then
				love.graphics.draw(monster1Right, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 300-52-playerw, 281-playerh);
			-- walking right frame B
			else
				love.graphics.draw(monster2Right, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 300-52-playerw, 281-playerh);
			end
		-- jumping
		else
			love.graphics.draw(monsterjumpright, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 300-52-playerw, 281-playerh);
		end
	-- facing left
	else
		-- grounded
		if pground == true then
			-- facing left frame A
			if ptt == true then
				love.graphics.draw(monster1Left, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 52, 281-playerh);
			-- facing left frame B
			else
				love.graphics.draw(monster2Left, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 52, 281-playerh);
			end
		-- jumping
		else
			love.graphics.draw(monsterjumpleft, pvertx1, pverty1, objects.monster.body:getAngle(), 1, 1, 52, 281-playerh);
		end
	end



	--draw Bunny

	if bunny3R == true then 
		if bunnygrounded3 == true then
			love.graphics.draw(bunnyRight,b3x,b3y - (39 - bunnyh),objects.bunny3.body:getAngle());
		else
			love.graphics.draw(bunnyJumpRight,b3x - (34 - bunnyw),b3y - (39 - bunnyh),objects.bunny3.body:getAngle());
		end
	else 
		if bunnygrounded3 == true then
			love.graphics.draw(bunnyLeft,b3x - (34 - bunnyw),b3y - (39 - bunnyh),objects.bunny3.body:getAngle());
		else
			love.graphics.draw(bunnyJumpLeft,b3x - (34 - bunnyw),b3y - (39 - bunnyh),objects.bunny3.body:getAngle());
		end
	end

	---------
	if bunny2R == true then 
		if bunnygrounded2 == true then
			love.graphics.draw(bunnyRight,b2x,b2y - (39 - bunnyh),objects.bunny2.body:getAngle());
		else
			love.graphics.draw(bunnyJumpRight,b2x - (34 - bunnyw),b2y - (39 - bunnyh),objects.bunny2.body:getAngle());
		end
	else 
		if bunnygrounded2 == true then
			love.graphics.draw(bunnyLeft,b2x - (34 - bunnyw),b2y - (39 - bunnyh),objects.bunny2.body:getAngle());
		else
			love.graphics.draw(bunnyJumpLeft,b2x - (34 - bunnyw),b2y - (39 - bunnyh),objects.bunny2.body:getAngle());
		end
	end
	-----------
	if bunny1R == true then 
		if bunnygrounded1 == true then
			love.graphics.draw(bunnyRight,b1x,b1y - (39 - bunnyh),objects.bunny1.body:getAngle());
		else
			love.graphics.draw(bunnyJumpRight,b1x - (34 - bunnyw),b1y - (39 - bunnyh),objects.bunny1.body:getAngle());
		end
	else 
		if bunnygrounded1 == true then
			love.graphics.draw(bunnyLeft,b1x - (34 - bunnyw),b1y - (39 - bunnyh),objects.bunny1.body:getAngle());
		else
			love.graphics.draw(bunnyJumpLeft,b1x - (34 - bunnyw),b1y - (39 - bunnyh),objects.bunny1.body:getAngle());
		end
	end
	
	if dead1T > 0 then
		love.graphics.draw(bunnyDead, dead1x-(34/2), dead1y-(39/2));
	end
	if dead2T > 0 then
		love.graphics.draw(bunnyDead, dead2x-(34/2), dead2y-(39/2));
	end
	if dead3T > 0 then
		love.graphics.draw(bunnyDead, dead3x-(34/2), dead3y-(39/2));
	end
end