function onCreate()
	-- background shit
	makeLuaSprite('Black_Hoe_Room', 'Black_Hoe_Room', -900, -300);
	setScrollFactor('Black_Hoe_Room', 1, 1);
	scaleObject('Black_Hoe_Room', .8, .8);

	makeLuaSprite('Light', 'Light', -900, -300);
	setScrollFactor('Light', 1, 1);
	scaleObject('Light', .8, .8);

	addLuaSprite('Black_Hoe_Room', false);
	addLuaSprite('Light', true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end