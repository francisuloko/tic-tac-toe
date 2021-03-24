#!/usr/bin/env ruby

puts 'Wellcome to Roby Tic Tac Toe!'

puts 'Enter the First Player Name:'
first_player_name = gets.chomp
puts 'Enter the Second Player Name:'
second_player_name = gets.chomp

puts 'Lets start'

puts '+---+---+---+'
puts '| 1 | 2 | 3 |'
puts '+---+---+---+'
puts '| 4 | 5 | 6 |'
puts '+---+---+---+'
puts '| 7 | 8 | 9 |'
puts '+---+---+---+'

puts "First Player is #{first_player_name} and starts with X"

puts 'Please select a avaiable cell from the board'
move = gets.chomp.to_i

while move.zero?  do
  puts 'Enter a valid value'
  move = gets.chomp.to_i
end

system("clear")

puts "Win Player 2 is #{second_player_name}"
