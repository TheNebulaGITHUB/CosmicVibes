function onCreate()
	-- background shit
	makeLuaSprite('Darkness', 'Darkness', -600, -300);
	setScrollFactor('black', 0.9, 0.9);

	addLuaSprite('Darkness', false);
	 

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end