function onCreate()
	-- background shit
	makeLuaSprite('Blueberry_stage', 'Blueberry_stage', -600, -300);
	setScrollFactor('Blueberry_stage', 0.9, 0.9);

	addLuaSprite('Blueberry_stage', false);
	 

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end