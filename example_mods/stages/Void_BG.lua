function onCreate()
	makeLuaSprite('Sky', 'stages/Sky', -630, -200)
	setScrollFactor('Sky', 0.9, 0.9)
	scaleObject('Sky', 1, 1)
	addLuaSprite('Sky', false)
	
	makeLuaSprite('Stars', 'stages/Stars', -1800, -340)
	addLuaSprite('Stars', false)
	setScrollFactor('Stars', 1, 1)
	scaleObject('Stars', 1, 0.5)

	makeLuaSprite('Grass1', 'stages/Grass', -780, -350)
	setScrollFactor('Grass1', 0.9, 0.9)
	scaleObject('Grass1', 0.8, 0.5)
	addLuaSprite('Grass1', false)
	
	makeLuaSprite('SideWalk', 'stages/sd', -520, -50)
	setScrollFactor('SideWalk', 1, 1)
	scaleObject('SideWalk', 0.8, 0.4)
	addLuaSprite('SideWalk', false)

	makeAnimatedLuaSprite('Sanimated','stages/Seanic',-490, 110)
	addAnimationByPrefix('Sanimated','dance','Seanic Bop',24,true)
	addLuaSprite('Sanimated', false)
	playAnim('Sanimated', 'Seanic Bop', true)
	scaleObject('Sanimated', 0.9, 0.9)
	setScrollFactor('Sanimated', 1, 1);

	makeLuaSprite('Trash', 'stages/tc', -540, -510)
	setScrollFactor('Trash', 1, 1)
	scaleObject('Trash', 0.6, 0.6)
	addLuaSprite('Trash', false)

	makeLuaSprite('tree1', 'stages/tree', 10, -480)
	setScrollFactor('tree1', 1, 1)
	scaleObject('tree1', 0.6, 0.6)
	addLuaSprite('tree1', false)

	makeAnimatedLuaSprite('Kiwianimated','stages/Kiwi',1500, -20)
	addAnimationByPrefix('Kiwianimated','dance','Kiei bop',24,true)
	playAnim('Kiwianimated', 'Kiei bop', true)
	addLuaSprite('Kiwianimated', false)
	scaleObject('Kiwianimated', 0.9, 0.9)
	setScrollFactor('Kiwianimated', 1, 1);

	makeAnimatedLuaSprite('Kenanimated','stages/Ken',2180, 310)
	addAnimationByPrefix('Kenanimated','dance','Ken bop',24,true)
	addLuaSprite('Kenanimated', false)
	scaleObject('Kenanimated', 0.9, 0.9)
	setScrollFactor('Kenanimated', 1, 1);

	makeLuaSprite('foreground', 'stages/overlay', -350, -1100)
	setScrollFactor('foreground', 0.9, 0.9)
	addLuaSprite('foreground', true)
	setObjectCamera('foreground', 'other')

	setProperty('defaultCamZoom',0.7)
end

function onBeatHit()
	objectPlayAnimation('Kiwianimated', 'dance', true)
	objectPlayAnimation('Kenanimated', 'dance', true)
	objectPlayAnimation('Sanimated', 'dance', true)
end