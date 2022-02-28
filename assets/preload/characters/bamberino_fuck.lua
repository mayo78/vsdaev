
ofs = 50;
followchars = true;
dadzoom = 1.0

xx2 = 952.9;
yy2 = 650;
ofs2 = 50
followchars = true
bfzoom = 0.9

HAHALOSER = true

maxxy = 100

speed = 250

shit = {
  'mods/ABM/images/bamberino/piss/kys.png',
  'mods/ABM/images/bamberino/piss/mad-dave.gif',
  'mods/ABM/images/bamberino/piss/middlefinger.png',
  'mods/ABM/images/bamberino/piss/sad.png'
}

function opponentNoteHit(ipiss, piss2, piss3, sus) -- SUS? SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?SUS?
  if not sus then
    setProperty('health', getProperty('health') - 0.01)
  end

  cumming = true
  runTimer('nobfcam', 0.25)
  bruh = 5
  if not cheating then
    if piss2 == 0 then
      setPropertyFromClass('openfl.Lib','application.window.x', getPropertyFromClass('openfl.Lib','application.window.x')-bruh)
    elseif piss2 == 1 then
      setPropertyFromClass('openfl.Lib','application.window.y', getPropertyFromClass('openfl.Lib','application.window.y')+bruh)
    elseif piss2 == 2 then
      setPropertyFromClass('openfl.Lib','application.window.y', getPropertyFromClass('openfl.Lib','application.window.y')-bruh)
    elseif piss2 == 3 then
      setPropertyFromClass('openfl.Lib','application.window.x', getPropertyFromClass('openfl.Lib','application.window.x')+bruh)
    end
  end
end
function onCreatePost()
  setProperty('iconP2.antialiasing', false)
  setProperty('gf.visible', false)

  setPropertyFromClass('flixel.FlxG', 'autoPause', false)
  math.randomseed(os.time())
end
function onBeatHit()
	bitchy = math.random(1,4)
  nice1234 = math.random(1,maxxy)
  if cumming and nice1234 == 1 then
    os.execute('start '..shit[math.random(1,4)])
  end
end
function onUpdate(elapsed)
  songPos = getSongPosition()
  currentBeat = (songPos/5000)*(curBpm/60)

	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') and bitchy == 1 then --this checks to see if the notes that are coming are bfs or not
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false);
			bitchy = 0
		end
	end
  if not mustHitSection then
    cumming = true
    setProperty('defaultCamZoom', 0.7)
  else
    setProperty('defaultCamZoom', 0.9)
  end
  doTweenX('dadNICE', 'dad', math.cos(currentBeat*1.5)*500+305, 0.005, 'linear')
  doTweenY('dadNIC2', 'dad', math.sin(currentBeat*1.5)*500+200, 0.005, 'linear')

  if cumming then
    triggerEvent('Camera Follow Pos',getProperty('dad.x')+750,getProperty('dad.y')+500)
  else
    triggerEvent('Camera Follow Pos','','')
  end

  if getProperty('dad.x') > 317 then
    setProperty('dad.flipX', true)
  else
    setProperty('dad.flipX', false)
  end

  if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
    os.execute('start '..shit[math.random(1,4)])
    --os.execute('start AAHH.png')
  end

  if getPropertyFromClass('openfl.Lib', 'application.window.width') ~= 1280 then
		setPropertyFromClass('openfl.Lib', 'application.window.width', 1280)
	end
	if getPropertyFromClass('openfl.Lib', 'application.window.height') ~= 720 then
		setPropertyFromClass('openfl.Lib', 'application.window.height', 720)
	end
  if getPropertyFromClass('flixel.FlxG','fullscreen') then
    jumpscare()
  end

  if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
    jumpscare()
    setProperty('inCutscene', true)
  end

  if cheater then
    setPropertyFromClass('openfl.Lib','application.window.x', math.cos(currentBeat*speed)*screenWidth+1300)
    setPropertyFromClass('openfl.Lib','application.window.y', math.sin(currentBeat*speed)*screenHeight+200)
  end
end
function onCreate()
	setPropertyFromClass('openfl.Lib', 'application.window.width', 1280)
	setPropertyFromClass('openfl.Lib', 'application.window.height', 720)
	setPropertyFromClass('flixel.FlxG', 'fullscreen', false)

  makeLuaSprite('loser', 'bamberino/piss/fucku', 0, 0)
  setObjectCamera('loser', 'other')
  setProperty('loser.visible', false)
  addLuaSprite('loser')
end
function onTimerCompleted(tag)
  if tag == 'nobfcam' then
    playSound('confirmMenu', 0.0)
    cumming = false
  elseif tag == 'cheat' then
    endSong()
  end
end
function onPause()
  setPropertyFromClass('flixel.FlxG', 'autoPause', true)
  return Function_Continue;
end
function onDestroy()
  setPropertyFromClass('flixel.FlxG', 'autoPause', true)
end
function onResume()
  setPropertyFromClass('flixel.FlxG', 'autoPause', false)
end
function jumpscare()
  setProperty('loser.visible', true)
  cheater = true

  setProperty('boyfriend.stunned', true)
  playSound('cheater')
  runTimer('cheat', 30.598)
  maxxy = 50
end
