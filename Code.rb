#your best night...
#by Milk_Cool
set_volume! 1
use_synth :dark_ambience
play 80, release: 0, decay: 99999, amp: 0.1
in_thread do
  use_synth :beep
  loop do
    2.times do
      play 80, pitch: 0.4, amp: 0.02
      sleep 0.25
    end
    play 87, pitch: 0.5, amp: 0.02
    sleep 0.25
    play 89, pitch: 0.6, amp: 0.02
    sleep 0.25
  end
end
in_thread do
  use_synth :beep
  with_fx :reverb do
    4.times do
      play 80, pitch: 0.4
      sleep 3.5
      play 80, pitch: 0.4
      sleep 0.5
      play 87, pitch: 0.5
      sleep 3.5
      play 87, pitch: 0.5
      sleep 0.25
      play 89, pitch: 0.6
      sleep 0.25
      play 80, pitch: 0.4
      sleep 3.5
      play 87, pitch: 0.5
      sleep 0.25
      play 80, pitch: 0.4
      sleep 3.5
      play 78, pitch: 0.3
      sleep 0.75
    end
  end
end
sleep 32
in_thread do
  loop do
    3.times do
      sample :bass_hit_c
      sleep 0.25
    end
    sample :drum_bass_hard
    sleep 0.25
  end
end
sleep 32
vvll = 1
50.times do
  vvll = vvll - 0.02
  set_volume! vvll
  sleep 0.02
end