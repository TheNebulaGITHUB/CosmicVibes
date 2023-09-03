function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)
    if name == "Lyrics" then

        makeLuaText('captions', 'Lyrics go here', 1000, 150, 620)
        setTextString('captions',  '' .. string)
        setTextFont('captions', 'Dragrace.ttf')
        setTextColor('A020F0', 702963)
        setTextSize('captions', 35);
        addLuaText('captions')
	setObjectCamera('captions', 'other');
        setTextAlignment('captions', 'center')
        --removeLuaText('captions', true)
	elseif tag == 'fadeout' then
		doTweenAlpha('captions', 'Lyrics go here', 0, 1, 'linear');
        
    end
end

