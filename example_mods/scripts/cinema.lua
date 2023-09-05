function makeSolid(id, width, height, color)
    makeGraphic(id, 1, 1, color)
    scaleObject(id, width, height)
end

function onCreatePost()

    makeLuaSprite('UpperBarHUD', 'empty', -110, -350)
	makeSolid('UpperBarHUD', 1500, 350, '000000')
	setObjectCamera('UpperBarHUD', 'HUD')
	addLuaSprite('UpperBarHUD', false)

    makeLuaSprite('LowerBarHUD', 'empty', -110, 720)
	makeSolid('LowerBarHUD', 1500, 350, '000000')

    runHaxeCode([[
        game.modchartSprites.get("UpperBarHUD").makeGraphic(1, 1, 0xFF000000);   
        game.modchartSprites.get("LowerBarHUD").makeGraphic(1, 1, 0xFF000000);        
    ]])
	setObjectCamera('LowerBarHUD', 'HUD')
	addLuaSprite('LowerBarHUD', false)

    UpperBar = getProperty('UpperBarHUD.y')
	LowerBar = getProperty('LowerBarHUD.y')

    for Notes = 0,7 do 
        StrumY = getPropertyFromGroup('strumLineNotes', Notes, 'y')
    end
	
	Speed = 1
	Distance = 64



	if Speed and Distance > 0 then

		doTweenY('With HUD1', 'UpperBarHUD', UpperBar + Distance, Speed, 'QuadOut')
		doTweenY('With HUD2', 'LowerBarHUD', LowerBar - Distance, Speed, 'QuadOut')

	end

	if downscroll and Speed and Distance > 0 then
	
		doTweenY('With HUD1', 'UpperBarHUD', UpperBar + Distance, Speed, 'QuadOut')
		doTweenY('With HUD2', 'LowerBarHUD', LowerBar - Distance, Speed, 'QuadOut')

	end
end

