#inspired by Amelie Lens video

shirley = "C:/Users/Farrell Family/Desktop/Sonic Pi/samples/surely2.wav"

sleep_const = 0.5

live_loop :bass_drum do
  8.times do
    
    sample :drum_bass_hard
    sleep sleep_const
  end
end

sync :bass_drum
live_loop :drebin do
  sample shirley
  sleep 2
end

live_loop :tap do
  
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :tom do
  stop
  sample :drum_cymbal_closed
  sleep 0.125
  
end

use_synth :tb303
stop
live_loop :squeal do
  sync :tom
  with_fx :lpf do
    #play :e3, (release: 1.0)
  end
  
  sleep 0.1
  
end

live_loop :bass do
  use_synth :tb303
  stop
  sync :tom
  with_fx :flanger do
    play :e2, decay: 1.5, cutoff: 80, amp: 0.125
    sleep 4
  end
  
end

