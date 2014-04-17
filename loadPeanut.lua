function loadPeanut()
	--Set Icon:a
	icon = love.graphics.newImage("res/bunny/icon.png");
	love.graphics.setIcon(icon)
	
	animationRec()
	-- Load audio:
	
	jump = love.audio.newSource("res/music/playerJump.ogg", 'static');
	bgm = love.audio.newSource("res/music/theme.ogg", 'stream');
	bunnyhop = love.audio.newSource("res/music/bunnyhop.ogg", 'static');
	deathSound = love.audio.newSource("res/music/death.ogg", 'static');
	bgm:setLooping(true)
	love.audio.play(bgm);
	
	love.audio.setVolume(0.2);
	volume = love.audio.getVolume();
	pause = true;
	--love.audio.play(song);
	love.graphics.setNewFont("res/font/8bit.ttf",20);
	

	bunnyVar()
	playerVar()
	pRight = false; --Player facing right
	score = 0; --amount of bunnies killed
	mute=false;
	cauliflower = false;
	gameT = 0;

	--physics engine stuff
	--fixture category  1 = ground, 2 = player, 3 = monster
	love.physics.setMeter(64);
	world = love.physics.newWorld(0, 9.81*64, true);

	
	objects = {};
	bunnyObj()
	playerObj()

	-- Make the ground
	objects.ground = {};
	objects.ground.body = love.physics.newBody(world, 1000/2, 600-40/2);
	objects.ground.shape = love.physics.newRectangleShape(2000, 40);
	objects.ground.fixture = love.physics.newFixture(objects.ground.body , objects.ground.shape);
	objects.ground.fixture:setCategory( 1 );
	
	-- Make Ceiling
	objects.ceiling = {};
	objects.ceiling.body = love.physics.newBody(world, 1000/2, -20/2);
	objects.ceiling.shape = love.physics.newRectangleShape(2000, 20);
	objects.ceiling.fixture = love.physics.newFixture(objects.ceiling.body , objects.ceiling.shape);
	objects.ceiling.fixture:setCategory( 1 );

	-- Left Wall
	objects.leftWall = {};
	objects.leftWall.body = love.physics.newBody(world, -25, 600/2);
	objects.leftWall.shape = love.physics.newRectangleShape(50, 600);
	objects.leftWall.fixture = love.physics.newFixture(objects.leftWall.body , objects.leftWall.shape);
	objects.leftWall.fixture:setCategory( 1 );

	-- Right Wall
	objects.rightWall = {};
	objects.rightWall.body = love.physics.newBody(world, 1025, 600/2);
	objects.rightWall.shape = love.physics.newRectangleShape(50, 600);
	objects.rightWall.fixture = love.physics.newFixture(objects.rightWall.body , objects.rightWall.shape);
	objects.rightWall.fixture:setCategory( 1 );
end

function pauseMusic()
	love.audio.pause(bgm);
end

function resumeMusic()
	love.audio.resume(bgm);
end