class Player
  attr_reader :name, :moves, :mark

  def initialize(name, mark)
    @name = name
    @moves = []
    @mark = mark
  end

  def add_move(move)
    @moves<<move
  end

end