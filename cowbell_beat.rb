use_bpm 130
live_loop :trance do
  #stop
  sample :bd_haus
  sample :bd_boom
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sample :bass_hit_c, amp: 0.4, release: 1
  #play (60)
  sleep 0.5
end

live_loop :other_drums do
  #stop
  sync :trance
  sample :drum_cowbell,amp: 0.5
  sleep 0.25
  sample :drum_cowbell,amp: 0.5
  sleep 0.5
  sample :drum_cowbell
  sleep 0.25
  sample :drum_cowbell
  sleep 3
  
end


sync :trance
live_loop :boops do
  #stop
  with_synth :tb303 do
    #noteList = [60,60,72,72].ring
    #play choose(chord(:c3, :madd2)), amp: 0.2, release: 0.3, cutoff: 80 #rrand(60,120)
    sleep 0.5
    ##| 2.times do
    ##|   play 60
    ##|   sleep 0.5
    ##| end
    ##| 2.times do
    ##|   play 72, amp: 0.5
    ##|   sleep 0.5
    ##| end
    
  end
end

