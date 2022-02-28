twitcher = 10
function onTimerCompleted(tag)
  if tag == 'twitchleft' then
    setProperty('dad.x', defaultOpponentX+twitcher)
    setProperty('dad.y', defaultOpponentY-twitcher)
    runTimer('twitchright', 0.05)
  elseif tag == 'twitchright' then
    setProperty('dad.x', defaultOpponentX-twitcher)
    setProperty('dad.y', defaultOpponentY+twitcher)
    runTimer('twitchleft', 0.05)
  end
end
