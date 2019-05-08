def p(note,sleep_time)
  play note
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
      play_pattern_sleep [74], 0.5
      
      play_pattern_sleep [67,69,71,72], 0.25
      play_pattern_sleep [74,67,67,76], 0.5
      play_pattern_sleep [72,74,76,78], 0.25
      play_pattern_sleep [79,67,67,72], 0.5
      play_pattern_sleep [74,72,71,69], 0.25
      play_pattern_sleep [71], 0.5
      play_pattern_sleep [72,71,69,67], 0.25
      if i == 0
        play_pattern_sleep [66], 0.5
        play_pattern_sleep [67,69,71,67], 0.25
        play_pattern_sleep [69], 1.5
      else
        play_pattern_sleep [69], 0.5
        play_pattern_sleep [71,69,67,66], 0.25
        play_pattern_sleep [67], 1.5
        
      end
    end
  end
  
  
  def left_hand
    play :g3 #55
    play :b3 #59
    play :d4 #62
    sleep 1
    play :a3 #57
    sleep 0.5
    play :b3 #59
    sleep 1.5
    play_pattern_sleep [:c,:b3,:a3,:g3],1.5
    play_pattern_sleep [62,59,55,62],0.5
    play_pattern_sleep [50,60,59,57],0.25
    
    #second time around
    play :b3
    sleep 1
    play_pattern_sleep [:a3,:g3,:b3,:g3],0.5
    play 60
    sleep 1.5
    play_pattern_sleep [:b3], 0.5
    play_pattern_sleep [60,59,57,55], 0.25
    play_pattern_sleep [:a3], 1
    play_pattern_sleep [:fs3], 0.5
    play_pattern_sleep [:g3], 1
    play_pattern_sleep [:b3,:c4,:d4,:d3], 0.5
    play_pattern_sleep [:g3], 1
    play_pattern_sleep [:g2], 0.5
    
  end
  
  def movement2
    2.times do
      
      2.times do
        p 67
      end
      
      2.times do
        p 65
      end
      
      2.times do
        p 64
      end
      
      p 62, sleep_time: 1
    end
    
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