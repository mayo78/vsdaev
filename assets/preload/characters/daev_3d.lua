speeder = 2
isBeast = false
function onUpdate(elapsed)
  songPos = getSongPosition()
  currentBeat = (songPos/5000)*(curBpm/60)

  setProperty('dad.y', (150*math.sin(currentBeat*speeder))-300)
  setProperty('boyfriend.y', (100*math.sin(currentBeat))+200)
  setProperty('gf.y', (50*math.sin(currentBeat*speeder)))
end
