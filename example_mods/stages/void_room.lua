function onCreate()
	-- background shit
	makeAnimatedLuaSprite('cosmic tv', 'cosmic tv', -90, 120);
	addAnimationByPrefix('cosmic tv', 'cosmic tv idle', 'cosmic tv idle', 24, true);
	setLuaSpriteScrollFactor('cosmic tv', 1, 1);
	scaleObject('cosmic tv', .85, .85);
	addLuaSprite('cosmic tv', false);
	
	makeLuaSprite('void room', 'void room', -900, -300);
	setScrollFactor('void room', 1, 1);
	scaleObject('void room', .8, .8);

	addLuaSprite('void room', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end