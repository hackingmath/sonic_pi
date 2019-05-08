# Welcome to Sonic Pi v2.10
beat = 0
bar = 0

define :updateTime do
  beat = beat + 1
  if beat >= 16
    beat = 0
    bar = bar + 1
    if bar >= 4
      bar = 0
    end
  end
end

define :bpmToBeatTime do |bpm|
  (60000.0/bpm)/1000.0
end

sleepTime = bpmToBeatTime(124 * 4)

live_loop :main_loop do
  # run instruments
  kicks
  snares
  hats
  open_hat
  crunch_efx
  bass
  synthh

  # update time
  sleep sleepTime
  updateTime
end

###########################################################
# BASS
###########################################################
define :bass_note do |noteNum, cutoff|
  use_synth :beep
  use_synth :subpulse
  play noteNum, attack: 0.01, sustain: 0.01, release: 0.066, cutoff:cutoff
end

bassNote = choose(chord(:A2, :minor))
define :bass do
  if beat % 4 == 0
    bassNote = choose(chord(:A2, :minor)) # choose([52, 54, 55])
  end
  # if beat % 4 >= 1
  bass_note bassNote - 12, 30 + 4 * beat
  # end
end

###########################################################
# SYNTH
###########################################################
define :synthy do |baseNote|
  use_synth :pulse
  with_fx :reverb do |r|
    control r, mix: 0.75
    play baseNote, attack: 0.01, sustain: 0.1, release: 0.1, amp: 0.2, pan: 0.1, cutoff: rrand(60, 110)
  end
end

define :synthh do
  if beat != 0 && (beat % 2 == 0 || beat == 15)
    newNote = choose(chord(:C4, :minor)) # choose([52, 54, 55])
    synthy newNote
  end
end

###########################################################
# KICK
###########################################################
define :kicks44 do
  if beat % 4 == 0
    sample :bd_808, rate: 0.8, amp: 1.7
  end
  if beat == 1 && one_in(3)
    sample :bd_808, rate: 1, amp: 1.7
  end
end

define :kicks do
  if beat % 8 == 0 && bar % 2 == 0
    sample :drum_bass_hard, rate: 4, amp: 0.8
  end
  if beat == 5 || beat == 7
    sample :drum_bass_hard, rate: 1, amp: 0.8
  end
end

###########################################################
# SNARE
###########################################################
define :snares do
  if beat % 4 == 0 && beat % 8 != 0
    with_fx :reverb do |r|
      control r, mix: 0.1
      sample :perc_snap2, cutoff: 100, amp: 0.9
    end
  end
end

###########################################################
# OPEN HAT
###########################################################
define :open_hat do
  if beat % 4 != 0 && beat % 2 == 0
    with_fx :reverb do |r|
      control r, mix: rrand(0.1, 0.4)
      sample :drum_cymbal_closed, pan: 0.4, amp: rrand(0.5, 0.7)
    end
  end
end

###########################################################
# HATS
###########################################################
define :hats do
  if beat != 0
    if one_in(2)
      sample :elec_tick, pan: -0.4, rate: rrand(0.8, 1.2)
    else
      sample :elec_tick, pan: -0.4, rate: 1
    end
  end
end

###########################################################
# CRUSH EFX
###########################################################
define :crunch_efx do
  if beat <= 4 && bar == 0
    with_fx :reverb do |r|
      control r, mix: beat * 0.1
      sample :elec_fuzz_tom, amp: rrand(0.5, 0.7)
    end
  end
  if beat == 15 && bar % 2 == 0
    with_fx :reverb do |r|
      control r, mix: 0.4
      sample :elec_bell, amp: rrand(0.8, 0.99)
    end
  end
end
