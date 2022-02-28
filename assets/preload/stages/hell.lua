function onCreate()
  makeLuaSprite('bg', 'bamberino/AAHH', -3000, -1500)
  scaleObject('bg', 3, 3)
  addGlitchEffect('bg', 2, 2)
  setProperty('bg.antialiasing', false)
  addLuaSprite('bg')

  addGlitchEffect('camHud', 0.05, 0.05)
  addDistortionEffect('camHud', 2, 2)
  addVCREffect('camHud')
  addVCREffect('camGame')
end
function onUpdate()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
		debugPrint(math.ceil(getProperty('dad.x')) .. ', ', math.ceil(getProperty('dad.y')))
	end
end
