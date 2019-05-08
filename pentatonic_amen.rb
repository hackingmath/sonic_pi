live_loop :yeah do
  use_bpm 50
  with_fx :slicer, phase: 0.5, wave: 0, mix: 1 do
    
    sample :loop_amen, beat_stretch: 2, amp: 3
  end
  
  sleep 2
end

live_loop :billie_jean do
  use_bpm 50
  use_synth :tb303
  use_random_seed 2
  notes = (scale :e1, :minor_pentatonic)
  16.times do
    play notes.choose, release: 0.125, cutoff: 100,
      res: 0.5, wave: 0, amp: 1
    sleep 0.125
  end
  
end
