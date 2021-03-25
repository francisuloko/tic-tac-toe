#!/usr/bin/env ruby

require_relative '../lib/cell'
require_relative '../lib/board'
require_relative '../lib/player'
require_relative '../lib/game_logic'

puts "Welcome to Ruby's Tic-Tac-Toe!"
puts 'Enter First Player Name:'
first_player_name = gets.chomp
puts 'Enter Second Player Name:'
second_player_name = gets.chomp

game = GameLogic.new(first_player_name, second_player_name)

system('clear')

until game.game_end?
  board = game.board
  puts 'Lets start'

  puts '+---++---++---+'
  (0...3).each do |x|
    (0...3).each do |y|
      position = x * 3 + y
      if board.get_cell_value(position).valid?
        print "| #{position + 1} |"
      else
        print "| #{board.get_cell_value(position).mark} |"
      end
    end
    print "\r\n"
    puts '+---++---++---+'
  end
  if game.player_win?(game.player_one)
    puts "Win #{game.player_one}"
    puts 'Game Over'
    break
  end
  if game.player_win?(game.player_two)
    puts "Win #{game.player_one}"
    puts 'Game Over'
    break
  end

  if game.turn.even?
    puts "It's #{game.player_one.name} turn"
    puts 'Please select a avaiable cell from the board'
    move = gets.chomp.to_i
    until game.play_player?(game.player_one, move)
      puts "Enter a valid value #{game.player_one.name}"
      move = gets.chomp.to_i
    end
  else
    puts "It's #{game.player_two.name} turn"
    puts 'Please select a avaiable cell from the board'
    move = gets.chomp.to_i
    until game.play_player?(game.player_two, move)
      puts "Enter a valid value #{game.player_two.name}"
      move = gets.chomp.to_i
    end
  end

  game.next_turn
  system('clear')
end

puts '+---++---++---+'
(0...3).each do |x|
  (0...3).each do |y|
    position = x * 3 + y
    if board.get_cell_value(position).valid?
      print "| #{position + 1} |"
    else
      print "| #{board.get_cell_value(position).mark} |"
    end
  end
  print "\r\n"
  puts '+---++---++---+'
end

unless game.player_win?(game.player_one) && game.player_win?(game.player_two)
  puts 'Draw Game'
  puts 'Game Over'
end
