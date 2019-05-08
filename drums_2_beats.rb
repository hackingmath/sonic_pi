sleep_const = 0.25

live_loop :bass_drum do
  sample :drum_bass_hard
  sleep sleep_const
  sample :drum_bass_hard
  sleep sleep_const
  sample :drum_snare_hard
  sleep sleep_const
  sample :drum_snare_hard
  sleep 0.5*sleep_const
  sample :drum_bass_hard
  sleep sleep_const
  sample :drum_bass_hard
  sleep 0.5*sleep_const
  sample :drum_bass_hard
  sleep sleep_const
  sample :drum_snare_hard
  sleep sleep_const
  sample :drum_snare_hard
  sleep sleep_const
end

sync :bass_drum