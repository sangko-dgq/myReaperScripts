local fx_table = {"ReaEQ", "ReaComp"}

function insert_FXs()
  local sel_track_count = reaper.CountSelectedTracks(0)
  reaper.Undo_BeginBlock()
  for i=1, sel_track_count do
    local track = reaper.GetSelectedTrack(0, i-1)
    for fx=1, #fx_table do
      local fx_index = reaper.TrackFX_AddByName(track, fx_table[fx], false, 1)
      reaper.TrackFX_SetOpen(track, fx_index, not reaper.TrackFX_GetOpen(track, fx_index))
    end
  end
  reaper.Undo_EndBlock("Insert FX(s) to selected tracks", -1);
end

insert_FXs()