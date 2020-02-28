d = "C:/Users/brandon_moreno/Downloads/great Darth Vader quote.wav"
e = "C:/Users/brandon_moreno/Downloads/Darth Vader Breathing Sound Effect#2.wav"

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
