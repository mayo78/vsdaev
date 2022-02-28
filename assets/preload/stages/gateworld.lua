function onCreate()
  makeLuaSprite('sky', 'daev/sky', -290.25, -100)
  setScrollFactor('sky', 0.2, 0.2)
  addLuaSprite('sky')

  makeLuaSprite('groundback', 'daev/background', -362.1, 170)
  setScrollFactor('groundback', 0.5, 0.5)
  addLuaSprite('groundback')

  makeLuaSprite('gates', 'daev/gate', -383.9, 350)
  setScrollFactor('gates', 0.7, 0.7)
  addLuaSprite('gates')

  makeLuaSprite('ground', 'daev/ground', -396.4, 600)
  addLuaSprite('ground')
end
