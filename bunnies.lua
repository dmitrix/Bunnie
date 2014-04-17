function bunnyVar()
	b1x = 100; --bunny x
	b1y = 580; --bunny y
	b2x = 300; 
	b2y = 580;
	b3x = 900;
	b3y = 180;
	dead1x = 0;
	dead2x = 0;
	dead3x = 0;
	dead1y = 0;
	dead2y = 0;
	dead3y = 0;
	dead1T = 0;
	dead2T = 0;
	dead3T = 0;
	bunny1x = 0;
	bunny2x = 0;
	bunny3x= 0;
	bunny1y = 0;
	bunny2y = 0;
	bunny3y = 0;
	bunnyw = 28;
	bunnyh = 22;
	underplayer1 = false;
	underplayer2 = false;
	underplayer3 = false;
	playercontact1 = false;
	playercontact2 = false;
	playercontact3 = false;
	bunnygrounded1 = false;
	bunnygrounded2 = false;
	bunnygrounded3 = false;
	bunny1T = 50;
	bunny2T= 0;
	bunny3T = 12;
	bunny1R = true;
	bunny2R = true;
	bunny3R = true;
	bunnyrot = true;
	bunnyrotation = 70;	
end
function bunnyObj()
	-- Bunny1 
	objects.bunny1 = {};
	objects.bunny1.body = love.physics.newBody(world, b1x, b1y, "dynamic");
	objects.bunny1.shape = love.physics.newRectangleShape( bunnyw , bunnyh);
	objects.bunny1.fixture = love.physics.newFixture(objects.bunny1.body, objects.bunny1.shape, .6);
	objects.bunny1.body:setFixedRotation( bunnyrot );
	objects.bunny1.fixture:setCategory( 3 );
	--objects.bunny1.fixture:setMask( 3 );


	-- Bunny2 
	objects.bunny2 = {};
	objects.bunny2.body = love.physics.newBody(world, b2x, b2y, "dynamic");
	objects.bunny2.shape = love.physics.newRectangleShape( bunnyw , bunnyh);
	objects.bunny2.fixture = love.physics.newFixture(objects.bunny2.body, objects.bunny2.shape, .6);
	objects.bunny2.body:setFixedRotation( bunnyrot );
	objects.bunny2.fixture:setCategory( 3 );
	--objects.bunny2.fixture:setMask( 3 );


	-- Bunny3 
	objects.bunny3 = {};
	objects.bunny3.body = love.physics.newBody(world, b3x, b3y, "dynamic");
	objects.bunny3.shape = love.physics.newRectangleShape( bunnyw , bunnyh);
	objects.bunny3.fixture = love.physics.newFixture(objects.bunny3.body, objects.bunny3.shape, .6);
	objects.bunny3.body:setFixedRotation( bunnyrot );
	objects.bunny3.fixture:setCategory( 3 );
	--objects.bunny3.fixture:setMask( 3 );
	
end
function bunnies()
	-- Bunny1
	bunny1x , bunny1y = objects.bunny1.body:getPosition();
	if bunny1T > 160 then
		love.audio.play(bunnyhop);
		bunny1T = 0;
		objects.bunny1.body:applyLinearImpulse(0, -score*2);
		if bunny1R == true then 
			objects.bunny1.body:applyLinearImpulse(13+(score/2), 0);
			objects.bunny1.body:applyAngularImpulse(bunnyrotation)
			if bunny1x > 800 then
				bunny1R = false;
			end
		elseif bunny1R == false then
			objects.bunny1.body:applyLinearImpulse(-13-(score/2), 0);
			objects.bunny1.body:applyAngularImpulse(-bunnyrotation)
			if bunny1x < 200 then
				bunny1R = true;
			end
		end
	end
	bunny1T = bunny1T + 1;	
	-- jump: -65
	--bunny2 	
	bunny2x , bunny2y = objects.bunny2.body:getPosition();
	if bunny2T > 210 then
		love.audio.play(bunnyhop);
		bunny2T = 0;
		objects.bunny2.body:applyLinearImpulse(0, -score*2);
		if bunny2R == true then 
			objects.bunny2.body:applyLinearImpulse(23+(score/2), 0);
			objects.bunny1.body:applyAngularImpulse(bunnyrotation)
			if bunny2x > 800 then
				bunny2R = false;
			end
		elseif bunny2R == false then
			objects.bunny2.body:applyLinearImpulse(-23-(score/2), 0);
			objects.bunny1.body:applyAngularImpulse(-bunnyrotation)
			if bunny2x < 200 then
				bunny2R = true;
			end
		end
	end
	bunny2T = bunny2T + 1;	


	-- Bunny3
	bunny3x , bunny3y = objects.bunny3.body:getPosition();
	if bunny3T > 160 then
		love.audio.play(bunnyhop);
		bunny3T = 0;
		objects.bunny3.body:applyLinearImpulse(0, -score*3);
		if bunny3R == true then 
			objects.bunny3.body:applyLinearImpulse(13, 0);
			objects.bunny3.body:applyAngularImpulse(bunnyrotation)
			if bunny3x > 800 then
				bunny3R = false;
			end
		elseif bunny3R == false then
			objects.bunny3.body:applyLinearImpulse(-13, 0);
			objects.bunny3.body:applyAngularImpulse(-bunnyrotation)
			if bunny3x < 200 then
				bunny1R = true;
			end
		end
	end
	bunny3T = bunny3T + 1;	


	if dead1T > 0 then
		dead1T = dead1T - 1;
	end
	if dead2T > 0 then
		dead2T = dead2T - 1;
	end
	if dead3T > 0 then
		dead3T = dead3T - 1;
	end
end	
