in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

in_thread do
  loop do
    use_synth :fm
    play 40, release: 0.2
    sleep 0.5
  end
end

loop do
  use_synth :zawa
  sample 'C:\Users\Farrell Family\Documents\Sound recordings\yababy.wav'
  
  play 52, release: 2.5, phase: 2, amp: 0.5
  sleep 2
end