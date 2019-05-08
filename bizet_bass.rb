#From Sonic Pi book p. 39
#I used conditionals and booleans to switch between the
#bizet_bass lists!
#April 21, 2019 Easter!

use_debug false
bizet_bass = (ring :d, :r, :r, :a, :f5, :r, :a, :r)
bizet_bass2 = (ring :d, :r, :r, :Bb, :g5, :r, :Bb, :r)
counter = 0
switched = false

with_fx :reverb, room: 1, mix: 0.3 do
  live_loop :bizet do
    with_fx :slicer, phase: 0.125 do
      synth :blade, note: :d4, release: 8,
        cutoff: 100, amp: 1.5
    end
    counter += 1
    if counter % 4 == 0
      switched = !switched
    end
    
    if switched == false
      16.times do
        tick
        play bizet_bass.look, release: 0.1
        play bizet_bass.look - 12, release: 0.3
        sleep 0.125
      end
    else
      16.times do
        tick
        play bizet_bass2.look, release: 0.1
        play bizet_bass2.look - 12, release: 0.3
        sleep 0.125
      end
    end
    
    
  end
end


live_loop :ind do
  sample :loop_industrial, beat_stretch: 1, cutoff: 100, rate:1
  sleep 1
end

live_loop :drums do
  sample :bd_haus, cutoff: 110
  synth :beep, note: 49, attack: 0,
    release: 0.1
  sleep 0.5
end
