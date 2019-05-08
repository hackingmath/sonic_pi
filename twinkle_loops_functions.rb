def p(note,sleep_time: 0.5)
  play note
  sleep sleep_time
  
end

def twinkle
  movement1
  movement2
  movement1
end

def movement1
  2.times do
    p 60
  end
  
  2.times do
    p 67
  end
  
  2.times do
    p 69
  end
  
  p 67, sleep_time: 1
  
  2.times do
    p 65
  end
  
  2.times do
    p 64
  end
  
  2.times do
    p 62
  end
  
  p 60, sleep_time: 1
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


twinkle