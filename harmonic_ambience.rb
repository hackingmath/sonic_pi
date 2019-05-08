#Harmonic Ambience
#by Davids Fiddle
use_random_seed 12
roots = (ring :d3, :f3)  #Chord roots
types = (ring :m13, '7sus4')  #Chord types
room = 1  #Time between notes
ceiling = 3  #Maximum chord spread
doors = 16  #Time for chord changes
root = roots[0]
type = types[0]
live_loop :progression do
  tick
  root = roots.look
  type = types.look
  sleep doors
end
live_loop :ambi do
  use_synth (ring :growl, :hollow, :tech_saws).choose
  use_synth_defaults sustain: (line 4,8).choose,
    amp: 0.5,
    release: (line 0.2,2).choose,
    attack: (line 0.2,2).choose
  play (chord root, type, num_octaves: ceiling).choose
  sleep room
end
