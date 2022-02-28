function onCreate()
  makeLuaSprite('bg', 'flakebu/bg', -1000, -700)
  setScrollFactor('bg', 0.8, 0.8)
  scaleObject('bg', 2, 2)
  addGlitchEffect('bg', 1, 1)
  setProperty('bg.antialiasing', false)

  addLuaSprite('bg')

  makeLuaSprite('nicey', '', -800, -900)
  makeGraphic('nicey', 2500, 2000, '9FFFF5')
  setObjectCamera('nicey', 'other')
  setBlendMode('nicey', 'add')
  setProperty('nicey.alpha', 0)

  addLuaSprite('nicey',true)


  makeAnimatedLuaSprite('snow', 'flakebu/snow', 0, 0)
  addAnimationByPrefix('snow', 'snowing', 'FINAL')
  objectPlayAnimation('snow', 'snowing')
  setBlendMode('snow', 'add')
  setObjectCamera('snow', 'other')
  setProperty('snow.antialiasing', false)

  addLuaSprite('snow', true)

  doTweenAlpha('nicey', 'nicey', 0.7, 1, 'sineIn')
end

function onTweenCompleted(tag)
  if tag == 'nicey' then
    doTweenAlpha('nicey2', 'nicey', 0.3, 1, 'sineOut')
  elseif tag == 'nicey2' then
    doTweenAlpha('nicey', 'nicey', 0.5, 1, 'sineIn')
  end
  setProperty('health', getProperty('health') - 0.01)
end
