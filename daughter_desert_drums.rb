#From Sonic Pi website

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

live_loop :hihat do
  sample :drum_cymbal_closed, amp: 0.2
  sleep 0.25
  sample :drum_cymbal_pedal, amp: 0.1
  sleep 0.25
end

