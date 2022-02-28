xx = 450;
yy = 600;
ofs = 50;
followchars = true;
dadzoom = 1.0

xx2 = 952.9;
yy2 = 650;
ofs2 = 50
followchars = true
bfzoom = 0.9

function onUpdate()
    if followchars == true then
			setProperty('defaultCamZoom', dadzoom)
      if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
          triggerEvent('Camera Follow Pos',xx-ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
          triggerEvent('Camera Follow Pos',xx+ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singUP' then
          triggerEvent('Camera Follow Pos',xx,yy-ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
          triggerEvent('Camera Follow Pos',xx,yy+ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
          triggerEvent('Camera Follow Pos',xx-ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
          triggerEvent('Camera Follow Pos',xx+ofs,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
          triggerEvent('Camera Follow Pos',xx,yy-ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
          triggerEvent('Camera Follow Pos',xx,yy+ofs)
      end
      if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
          triggerEvent('Camera Follow Pos',xx,yy)
      end
      if getProperty('dad.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx,yy)
      end
    else
        triggerEvent('Camera Follow Pos','','')
    end

    if followchars == true and stop == false then
      setProperty('defaultCamZoom', bfzoom)
      if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
          triggerEvent('Camera Follow Pos',xx2-ofs2,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
          triggerEvent('Camera Follow Pos',xx2+ofs2,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
          triggerEvent('Camera Follow Pos',xx2,yy2-ofs2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
          triggerEvent('Camera Follow Pos',xx2,yy2+ofs2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
          triggerEvent('Camera Follow Pos',xx2,yy2)
      end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
          triggerEvent('Camera Follow Pos',xx2,yy2)
      end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function opponentNoteHit()
  stop = true
  runTimer('nobfcam', 0.25)
end
function onTimerCompleted(tag)
  if tag == 'nobfcam' then
    playSound('confirmMenu', 0.0)
    stop = false
  end
end
