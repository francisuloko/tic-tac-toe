require_relative '../lib/board'
require_relative '../lib/player'

class Game_Logic
  attr_reader :board, :player_one, :player_two, :turn

  WINPLAYS = [ [1,2,3],[4,5,6],[7,8,9],[1,5,9],[3,5,7], [1,4,7], [2,5,8], [3,6,9]]

  def initialize(p1, p2)
    @board = Board.new
    @player_one = Player.new(p1.upcase, "X")
    @player_two = Player.new(p2.upcase, "O")
    @turn = 0
  end

  def play_player?(player, position)
    valid_play = @board.set_value_grid?(position, player.mark)
    player.add_move(position) if valid_play
    valid_play
  end

  def next_turn
    @turn += 1
  end

  def player_win?(player)
    win = false
    WINPLAYS.each do |values|
      if (values - player.moves).empty?
        win = true
        break
      end
    end
    win
  end

  def game_end?
    @turn > 8
  end
end