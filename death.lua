function death()
	if bunny1y - (bunnyh/2) >= py + (playerh/2) and bunny1y - (bunnyh/2) - 3 <= py + (playerh/2) then
		underplayer1 = true;
	else
		underplayer1 = false;
	end
	if bunny2y - (bunnyh/2) >= py + (playerh/2) and bunny2y - (bunnyh/2) - 3 <= py + (playerh/2) then
		underplayer2 = true;
	else
		underplayer2 = false;
	end
	if bunny3y - (bunnyh/2) >= py + (playerh/2) and bunny3y - (bunnyh/2) - 3 <= py + (playerh/2) then
		underplayer3 = true;
	else
		underplayer3 = false;
	end




	if (px - playerw/2) <= (b1x + bunnyw/2) and (px + playerw/2) >= (b1x - bunnyw/2) then
		playercontact1 = true;
	else 
		playercontact1 = false;
	end
	if (px - playerw/2) <= (b2x + bunnyw/2) and (px + playerw/2) >= (b2x - bunnyw/2) then
		playercontact2 = true;
	else 
		playercontact2 = false;
	end
	if (px - playerw/2) <= (b3x + bunnyw/2) and (px + playerw/2) >= (b3x - bunnyw/2) then
		playercontact3 = true;
	else 
		playercontact3 = false;
	end




	if playercontact1 and underplayer1 then 
		score = score + 1;
		dead1x = bunny1x;
		dead1y = bunny1y;
		dead1T = 10;
		objects.bunny1.body:setPosition(math.random(1,999), 80);
		love.audio.play(deathSound);
	end
	if playercontact2 and underplayer2 then
		score = score + 1;
		dead2x = bunny2x;
		dead2y = bunny2y;
		dead2T = 10;
		objects.bunny2.body:setPosition(math.random(1,999), 80);
		love.audio.play(deathSound);
	end
	if playercontact3 and underplayer3 then
		score = score + 1;
		dead3x = bunny3x;
		dead3y = bunny3y;
		dead3T = 10;
		objects.bunny3.body:setPosition(math.random(1,999), 80);
		love.audio.play(deathSound);
	end

	

end