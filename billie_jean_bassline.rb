#Billie Jean bassline

use_synth :tb303
live_loop :bassline do
  c= [:fs2,:cs2,:e2,:fs2,:e2,:cs2,:b1,:cs2].ring.tick
  play c, amp: 3, attack: 0, release: 0.25
  sleep 0.25
end
