use_synth :piano

def p(note,sleep_time)
  play note, release: 3
  sleep sleep_time
end

#There's supposed to be a function that
#does this but it didn't work?
def play_pattern_sleep(noteList,sleep_time)
  for x in noteList
    p x, sleep_time
  end
end

def right_hand
  for i in 0..1 do
      play_pattern_timed [74], [0.5]
      
      play_pattern_timed [67,69,71,72], [0.25]
      play_pattern_timed [74,67,67,76], [0.5]
      play_pattern_timed [72,74,76,78], [0.25]
      play_pattern_timed [79,67,67,72], [0.5]
      play_pattern_timed [74,72,71,69], [0.25]
      play_pattern_timed [71], [0.5]
      play_pattern_timed [72,71,69,67], [0.25]
      if i == 0
        play_pattern_timed [66], 0.5
        play_pattern_timed [67,69,71,67], 0.25
        play_pattern_timed [69], 1.5
      else
        play_pattern_timed [69], 0.5
        play_pattern_timed [71,69,67,66], 0.25
        play_pattern_timed [67], 1.5
        
      end
    end
  end
  
  
  
  
  def left_hand
    play :g3,sustain: 2 #55
    play :b3 #59
    play :d4 #62
    sleep 1
    play :a3 #57
    sleep 0.5
    play :b3 #59
    sleep 1.5
    play_pattern_timed [:c,:b3,:a3,:g3],1.5
    play_pattern_timed [62,59,55,62],0.5
    play_pattern_timed [50,60,59,57],0.25
    
    #second time around
    play :b3
    sleep 1
    play_pattern_timed [:a3,:g3,:b3,:g3],0.5
    play 60
    sleep 1.5
    play_pattern_timed [:b3], 0.5
    play_pattern_timed [60,59,57,55], 0.25
    play_pattern_timed [:a3], 1
    play_pattern_timed [:fs3], 0.5
    play_pattern_timed [:g3], 1
    play_pattern_timed [:b3,:c4,:d4,:d3], 0.5
    play_pattern_timed [:g3], 1
    play_pattern_timed [:g2], 0.5
    
  end
  
  
  #Bach or Petzold Minuet in G
  
  def minuet
    in_thread do
      right_hand
    end
    
    left_hand
    
  end
  
  minuet
  #play_pattern_sleep [60,62,64,65],0.25