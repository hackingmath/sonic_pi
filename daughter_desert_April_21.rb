#I coded all these drums manually!

use_bpm 100

live_loop :drums do
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.5
  
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_bass_soft
  sleep 0.25
  sample :drum_snare_hard
  sleep 1
end

live_loop :hihat, sync: :drums do
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.3
  sleep 0.25
end

live_loop :swish, sync: :drums do
  with_fx :echo, phase: 1 do
    sample :drum_splash_soft
    sleep 1
  end
end

#The "melody" live loop
live_loop :melody, sync: :drums do
  
  with_fx :slicer, phase: 0.25, mix: 0.5 do
    use_synth :pretty_bell
    play 60,attack: 1,release: 2
    sleep 4
    play 68,attack: 1, release: 2
    sleep 4
  end
  
end
