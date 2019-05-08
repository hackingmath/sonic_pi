def p(note,sleep_time)
  play note
  sleep sleep_time
end

def play_pattern_sleep(noteList,sleep_time)
  for x in noteList
    p x, sleep_time
  end
end

#I forgot what the name of the
#piece is!

def fancy
  movement1
end

fancy
#play_pattern_sleep [60,62,64,65],0.25



def movement1
  play_pattern_sleep [67], 0.5
  play_pattern_sleep [60,62,64,65], 0.25
  play_pattern_sleep [67,60,60,69], 0.5
  
  p :f
  p :g
  p :a
  p :b
  p 72, sleep_time: 0.5
  p :c, sleep_time: 0.5
  p :c, sleep_time: 0.5
  p 65, sleep_time: 0.5
  p :g
  p :f
  p :e
  p :d
  p :e, sleep_time: 0.5
  p :f
  p :e
  p :d
  p :c
  p :d, sleep_time: 0.5
  
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
