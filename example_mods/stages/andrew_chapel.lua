function onCreate()
	-- background shit
	makeLuaSprite('B3_STAGE_BG', 'B3_STAGE_BG', -1550, -500);
	setScrollFactor('B3_STAGE_BG', 1, 1);
	scaleObject('B3_STAGE_BG', .8, .8);

	addLuaSprite('B3_STAGE_BG', false);

	makeAnimatedLuaSprite('BG_BOPPERS_3', 'BG_BOPPERS_3', -650, -150);
	addAnimationByPrefix('BG_BOPPERS_3', 'BG BOPPERS', 'BG BOPPERS', 24, true);
	setLuaSpriteScrollFactor('BG_BOPPERS_3', 1, 1);
	scaleObject('BG_BOPPERS_3', .8, .8);

	addLuaSprite('BG_BOPPERS_3', false);

	makeLuaSprite('B3_STAGE_COLUM_2', 'B3_STAGE_COLUM_2', -890, 100);
	setScrollFactor('B3_STAGE_COLUM_2', 1, 1);
	scaleObject('B3_STAGE_COLUM_2', .8, .8);

	addLuaSprite('B3_STAGE_COLUM_2', false);

	makeAnimatedLuaSprite('BG_BOPPERS_2', 'BG_BOPPERS_2', -850, -25);
	addAnimationByPrefix('BG_BOPPERS_2', 'BG BOPPERS', 'BG BOPPERS', 24, true);
	setLuaSpriteScrollFactor('BG_BOPPERS_2', 1, 1);
	scaleObject('BG_BOPPERS_2', .8, .8);

	addLuaSprite('BG_BOPPERS_2', false);

	makeLuaSprite('B3_STAGE_POLES', 'B3_STAGE_POLES', -225, -650);
	setScrollFactor('B3_STAGE_POLES', 1, 1);
	scaleObject('B3_STAGE_POLES', .8, .8);

	addLuaSprite('B3_STAGE_POLES', false);

	makeLuaSprite('B3_STAGE_COLUM_1', 'B3_STAGE_COLUM_1', -1150, 275);
	setScrollFactor('B3_STAGE_COLUM_1', 1, 1);
	scaleObject('B3_STAGE_COLUM_1', .8, .8);

	addLuaSprite('B3_STAGE_COLUM_1', false);

	makeAnimatedLuaSprite('BG_BOPPERS_1', 'BG_BOPPERS_1', -625, 35);
	addAnimationByPrefix('BG_BOPPERS_1', 'BG BOPPERS', 'BG BOPPERS', 24, true);
	setLuaSpriteScrollFactor('BG_BOPPERS_1', 1, 1);
	scaleObject('BG_BOPPERS_1', .8, .8);

	addLuaSprite('BG_BOPPERS_1', false);
	
	makeLuaSprite('B3_STAGE_LIGHTS', 'B3_STAGE_LIGHTS', -1300, -550);
	setScrollFactor('B3_STAGE_LIGHTS', 1, 1);
	scaleObject('B3_STAGE_LIGHTS', .8, .8);

	addLuaSprite('B3_STAGE_LIGHTS', false);
end

function onBeatHit()
	objectPlayAnimation('BG_BOPPERS_1', 'BG BOPPERS', true)
	objectPlayAnimation('BG_BOPPERS_2', 'BG BOPPERS', true)
	objectPlayAnimation('BG_BOPPERS_3', 'BG BOPPERS', true)
end

--For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage