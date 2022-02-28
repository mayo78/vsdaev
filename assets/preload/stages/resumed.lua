function onCreate()
	makeLuaSprite('bg', 'dambu/bg', -1000, -600);
  scaleObject('bg', 1.5, 1.5)
	setScrollFactor('bg', 0.9, 0.9)
	addLuaSprite('bg')
	addGlitchEffect('bg', 2, 2)
	setProperty('bg.antialiasing', false)

  makeAnimatedLuaSprite('dambuBRUH', 'dambu/BRUHbu', -700, 150)
  addAnimationByPrefix('dambuBRUH', 'bump', 'OMG', 24, false)
  objectPlayAnimation('dambuBRUH', 'bump', true)
  scaleObject('dambuBRUH', 0.8, 0.8)
  setProperty('dambuBRUH.antialiasing', false)
  setProperty('dambuBRUH.visible', false)
  addLuaSprite('dambuBRUH')

  makeAnimatedLuaSprite('dambaiDEATH', 'dambu/BRUH', 600, 150)
  addAnimationByPrefix('dambaiDEATH', 'bump', 'dead', 24, false)
  objectPlayAnimation('dambaiDEATH', 'bump', true)
  scaleObject('dambaiDEATH', 0.8, 0.8)
  setProperty('dambaiDEATH.antialiasing', false)
  setProperty('dambaiDEATH.visible', false)
  addLuaSprite('dambaiDEATH',true)
end
function onCreatePost()
  setProperty('iconP2.antialiasing', false)
end
function BRUH()
  doTweenX('right1', 'dambaiDEATH', getProperty('dambaiDEATH.x') + 100, 0.7, 'sineOut')
  doTweenY('right2', 'dambaiDEATH', getProperty('dambaiDEATH.y') - 400, 0.7, 'sineOut')
  doTweenAngle('right3', 'dambaiDEATH', -30, 0.7, 'sineOut')

  doTweenX('right4', 'dambaiDEATH.scale', 0.5, 0.7, 'sineOut')
  doTweenY('right5', 'dambaiDEATH.scale', 0.5, 0.7, 'sineOut')
end
function onUpdate()
  if spin then
    doTweenAngle('right3', 'dambaiDEATH', getProperty('dambaiDEATH.angle')-5, 0.001, 'linear')
  end
end
function onTweenCompleted(tag)
  if tag == 'right1' then
    doTweenX('left1', 'dambaiDEATH', getProperty('dambaiDEATH.x') - 250, 0.7, 'sineIn')
    doTweenY('left2', 'dambaiDEATH', getProperty('dambaiDEATH.y') + 50, 0.7, 'sineIn')
    spin = true

    doTweenX('left4', 'dambaiDEATH.scale', 0, 0.7, 'sineIn')
    doTweenY('left5', 'dambaiDEATH.scale', 0, 0.7, 'sineIn')
  elseif tag == 'left1' then
    spin = false
    removeLuaSprite('dambaiDEATH', true)
  end
end
function onEvent(name, COCK, lmao)
  if string.lower(name) == 'change character' then
    if lmao == 'dambai' then
      setProperty('dambuBRUH.visible', true)
      objectPlayAnimation('dambuBRUH', 'bump', true)
      setProperty('iconP2.antialiasing', false)
    elseif lmao == 'dambu' then
      setProperty('dambaiDEATH.visible', true)
      setProperty('dambuBRUH.visible', false)
      objectPlayAnimation('dambaiDEATH', 'bump', true)
      setProperty('iconP2.antialiasing', false)
      BRUH()
    end
  end
end
