#!/usr/bin/env ruby

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts 'Enter First Player Name:'
first_player_name = gets.chomp
puts 'Enter Second Player Name:'
second_player_name = gets.chomp
puts "#{first_player_name} will play with X and #{second_player_name} plays with O"
system('clear')

while true
  puts 'Lets start'

  puts '+---+---+---+'
  puts '| 1 | 2 | 3 |'
  puts '+---+---+---+'
  puts '| 4 | 5 | 6 |'
  puts '+---+---+---+'
  puts '| 7 | 8 | 9 |'
  puts '+---+---+---+'

  puts "It's #{first_player_name} turn"
  puts 'Please select a avaiable cell from the board'
  move = gets.chomp.to_i

  while move < 1 || move > 9
    puts "Enter a valid value #{first_player_name}"
    move = gets.chomp.to_i
  end

  if move == 3
    puts "Win Player 2 is #{second_player_name}"
    break
  end

  puts "It's #{second_player_name} turn"
  puts 'Please select a avaiable cell from the board'
  move = gets.chomp.to_i

  while move < 1 || move > 9
    puts "Enter a valid value #{second_player_name}"
    move = gets.chomp.to_i
  end

  if move == 5
    puts "Draw"
    break
  end
  system('clear')

end

puts 'Game Over'
