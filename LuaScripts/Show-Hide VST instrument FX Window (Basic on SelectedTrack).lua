local track = reaper.GetSelectedTrack(1,0)
local instrumentIndex = reaper.TrackFX_GetInstrument(track)
if instrumentIndex ~= -1 then
  if reaper.TrackFX_GetFloatingWindow(track, instrumentIndex) == nil then
    reaper.TrackFX_Show(track, instrumentIndex, 3)
  else
    reaper.TrackFX_Show(track, instrumentIndex, 2)
  end
end