function onCreate()
  makeLuaSprite('bg', 'daev/3d_bg', -500, -500)
  scaleObject('bg', 0.7, 0.7)
  setProperty('bg.antialiasing', false)
  addLuaSprite('bg')
end
