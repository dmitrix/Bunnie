function playerVar()
	px = 600; --player x
	py = 200; --player y
	ps = 8000; --player speed 	
	playerw = 95;
	playerh = 216;
	pground = false;
	ptt = true;
	pttT = 0;
end
function playerObj()
	objects.monster = {};
	objects.monster.body = love.physics.newBody(world, px, py, "dynamic");
	objects.monster.shape = love.physics.newRectangleShape( playerw, playerh);
	objects.monster.fixture = love.physics.newFixture(objects.monster.body, objects.monster.shape, 2.8);
	objects.monster.fixture:setRestitution(0);
	objects.monster.fixture:setCategory( 2 );
	objects.monster.fixture:setMask( 2 );
	objects.monster.body:setLinearDamping( 0 );
	objects.monster.body:setAngularDamping( 4 );
	objects.monster.body:setFixedRotation( true);
end

function playerControls()
	if (love.keyboard.isDown("left") or love.keyboard.isDown("a")) then	
		pttT = pttT + 1;
		if pground == true then
			objects.monster.body:applyForce(-ps, 0);
		else
			objects.monster.body:applyForce(-ps/2, 0);
		end
		pRight = false;
	elseif (love.keyboard.isDown("right") or love.keyboard.isDown("d"))  then
		
		pttT = pttT + 1;
		if pground == true then
			objects.monster.body:applyForce(ps, 0);
		else
			objects.monster.body:applyForce(ps/2, 0);
		end
		pRight = true;
	end
end

function playerJumpCheck()
	if py > 558 - (playerh/2) then
		pground = true;
		objects.monster.body:setLinearDamping( 2 );
	else
		pground = false;
		objects.monster.body:setLinearDamping( 1 );
	end
end

function playerKeyPressed()
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
end