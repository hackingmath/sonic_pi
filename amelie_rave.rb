#inspired by Amelie Lens video

sleep_const = 0.5

live_loop :bass_drum do
  sample :drum_bass_hard
  sleep sleep_const
  
end

sync :bass_drum

live_loop :tom do
  sample :drum_cymbal_closed
  sleep 0.125
  
end

use_synth :tb303
live_loop :squeal do
  sync :tom
  with_fx :lpf do
    #play :e3, (release: 1.0)
  end
  
  sleep 0.1
  
end

live_loop :bass do
  use_synth :tb303
  
  sync :tom
  with_fx :flanger do
    play :e2, decay: 1.5, cutoff: 80, amp: 0.125
    sleep 4
  end
  
end

