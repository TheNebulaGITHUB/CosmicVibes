function onCreatePost()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)
end

function onSongStart()
    setProperty('timeBarBG.visible', true)
    setProperty('timeBar.visible', true)
end
function onUpdate()
    doTweenColor('TimerColor', 'timeBar', '301934', '0.1', 'linear')
end