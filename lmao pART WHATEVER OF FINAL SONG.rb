# Welcome to Sonic Pi v3.1
#Song2 samples
d = "C:/Users/brandon_moreno/Downloads/great Darth Vader quote.wav"
e = "C:/Users/brandon_moreno/Downloads/Darth Vader Breathing Sound Effect#2.wav"

#Song1 samples
a = "C:/Users/brandon_moreno/Downloads/Pain's Cycle of Hatred.wav"
b = "C:/Users/brandon_moreno/Downloads/Twinkle Twinkle Little Star.wav"
c = "C:/Users/brandon_moreno/Downloads/Itachi Mangekyou Sharingan Sound Effect.wav"
twinkle_notes = [:c4, :g4, :a4, :f4, :e4, :d4]
x = 1
=begin
print sample_duration a, release: 1
sleep 6.096507936507937

define :measure1 do
  play twinkle_notes[0]
  sleep 1
  play twinkle_notes[0]
  sleep 1
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[1]
  sleep 1
end
define :measure2 do
  play twinkle_notes[2]
  sleep 1
  play twinkle_notes[2]
  sleep 1
  play twinkle_notes[1]
  sleep 1.5
end
define :measure3 do
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[4]
  sleep 1
end
define :measure4 do
  play twinkle_notes[5]
  sleep 1
  play twinkle_notes[5]
  sleep 1
  play twinkle_notes[0]
  sleep 1.5
end
define :measure5 do
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[1]
  sleep 1
  play twinkle_notes[3]
  sleep 1
  play twinkle_notes[3]
  sleep 1
end
define :measure6 do
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[4]
  sleep 1
  play twinkle_notes[5]
  sleep 1.5
end

#Vocal Loop
live_loop:vocal do
  sample b
  sleep 33.6927664399093
  stop
end

#Melody Loop
use_bpm 80.5
live_loop:twinkle do
  use_synth :piano

  # measure 1
  measure1

  #measure 2
  measure2

  #measure 3
  measure3

  #measure 4
  measure4

  #measure 5
  measure5

  #sixth measure
  measure6

  #measure 7
  measure5

  #measure 8
  measure6

  #measure 9
  measure1

  #measure 10
  measure2

  #measure 11
  measure3

  #measure 12
  measure4
  stop
end
sleep 45

#Outro
x = 1
10.times do
  sample c, amp: x
  sleep 2
  x = x - 0.1
end

#Song 2
=end
x = 1
x = 0

#Intro
sample d, amp: 15
sleep 14.903718820861679

#Array
star_notes = [:a3, :b3, :g3, :a4, :c4, :d4, :e4, :f4, :g4, :c5]
use_bpm 100

#Paramterized function
define:notes1 do |n1, n2, n3, n4|
  play n1
  sleep 0.5
  play n2
  sleep 0.5
  play n3
  sleep 0.5
  play n4
  sleep 0.5
end

#function
define:measure5 do
  play:f4
  sleep 0.5
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 0.5
end

#function
define :measure17 do
  play:a3
  sleep 0.5
  play:a3
  sleep 0.5
  play:f4
  sleep 0.5
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
  sleep 0.5
end

#HIGH NOTES ONLY

use_synth :piano
2.times do
  #measure1
  play star_notes[8]
  sleep 0.5
  
  #measure2
  notes1 :f4,:e4,:d4,:c5
  play star_notes[8]
  sleep 0.5
  
  #measure3
  notes1 :f4,:e4,:d4,:c5
  play star_notes[8]
  sleep 0.5
  
  #measure4
  notes1 :f4,:e4,:f4,:d4
end

#measure5
measure5

#measure6
play star_notes[4]
sleep 0.5
play star_notes[5]
sleep 0.5
play star_notes[6]
sleep 0.5
play star_notes[5]
sleep 0.5

#measure7
measure5

#measure8
play star_notes[8]
sleep 0.5
play star_notes[1]
sleep 0.5

#measure9
measure5

#measure10
play:c4
sleep 0.5
play:d4
sleep 0.5
play:e4
sleep 0.5
play:b4
sleep 0.5
play:g4
sleep 0.5
play:g4
sleep 0.5

#measure11
play:g5, amp: 30
sleep 0.5
play:b4, amp: 40
sleep 0.5
play:a4, amp: 50
sleep 0.5
play:g4, amp: 40
sleep 0.5
play:f4, amp: 30
sleep 0.5
play:e4, amp: 20
sleep 0.5
play:d4, amp: 10
sleep 0.5
play:c4, amp: 1
sleep 0.5


#FULL SONG

#measure12
if x = 0
  use_synth :tri
  2.times do
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure13
    play star_notes[4]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    
    #measure14
    notes1 :f4,:e4,:d4,:c5
    play star_notes[1]
    sleep 0.5
    play star_notes[0]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure15
    notes1 :f4,:e4,:d4,:c5
    play star_notes[1]
    sleep 0.5
    play star_notes[0]
    sleep 0.5
    play star_notes[8]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    
    #measure16
    notes1 :f4,:e4,:f4,:d4
    play star_notes[1]
    sleep 0.5
    play star_notes[1]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
    play star_notes[2]
    sleep 0.5
  end
  
  
  #measure17
  measure17
  
  #measure18
  play:c4, amp: 10
  sleep 0.5
  play:d4, amp: 20
  sleep 0.5
  play:e4, amp: 30
  sleep 0.5
  play:a3, amp: 40
  sleep 0.5
  play:d4, amp: 50
  sleep 0.5
  play:a3, amp: 40
  sleep 0.5
  play:g3, amp: 30
  sleep 0.5
  play:g3, amp: 20
  sleep 0.5
  
  #measure19
  measure17
  
  #measure20
  play:g4
  sleep 0.5
  play:a3
  sleep 0.5
  play:b4
  sleep 0.5
  play:a3
  sleep 0.5
  play:g4
  sleep 0.5
  play:g3
  sleep 0.5
  play:g3
  sleep 0.5
  
  #measure21
  measure17
  
  #measure22
  play:c4
  sleep 0.5
  play:a3
  sleep 0.5
  play:d4
  sleep 0.5
  play:e4
  sleep 0.5
  play:b4
  sleep 0.5
  play:b3
  sleep 0.5
  play:g4
  sleep 0.5
  play:g4
  sleep 0.5
  #measure23
  
  play:g5
  sleep 0.5
  play:b4
  sleep 0.5
  play:a4
  sleep 0.5
  play:g4
  sleep 0.5
  play:f4
  sleep 0.5
  play:e4
  sleep 0.5
  play:d4
  sleep 0.5
  play:c4
end

#Outro/Fadeout
x = 1
10.times do
  sample e, amp: x
  sleep 2
  x = x - 0.1
end
